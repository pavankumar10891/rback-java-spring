package com.pavan.rbac.service;

import com.pavan.rbac.dto.RegisterRequest;
import com.pavan.rbac.entity.User;
import com.pavan.rbac.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.pavan.rbac.dto.LoginRequest;
import com.pavan.rbac.security.JwtUtil;
import com.pavan.rbac.dto.LoginResponse;
import com.pavan.rbac.dto.RegisterResponse;
import com.pavan.rbac.exception.BadRequestException;


@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
     private final JwtUtil jwtUtil; 

    public RegisterResponse register(RegisterRequest request) {

        if (userRepository.findByUsername(request.getUsername()).isPresent()) {
            throw new BadRequestException("Username already exists");
        }

        if (userRepository.findByEmail(request.getEmail()).isPresent()) {
            throw new BadRequestException("Email already exists");
        }
        
        User user = new User();
        user.setUsername(request.getUsername());
        user.setPassword(passwordEncoder.encode(request.getPassword()));
        user.setEmail(request.getEmail());
        user.setRoles(request.getRoles());

        userRepository.save(user);

        return new RegisterResponse(
                user.getId(),
                user.getUsername(),
                user.getEmail()
        );
    }

    public LoginResponse login(LoginRequest request) {

        User user = userRepository.findByUsername(request.getUsername())
                .orElseThrow(() -> new RuntimeException("User not found"));

        if (!passwordEncoder.matches(request.getPassword(), user.getPassword())) {
            throw new RuntimeException("Invalid password");
        }

        String token = jwtUtil.generateToken(user.getUsername());

        return new LoginResponse(
                token,
                user.getUsername(),
                user.getEmail(),
                user.getRoles()
        );
    }

}