package com.pavan.rbac.controller;

import com.pavan.rbac.dto.RegisterRequest;
import com.pavan.rbac.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import com.pavan.rbac.dto.LoginRequest;
import com.pavan.rbac.security.JwtUtil;
import com.pavan.rbac.dto.ApiResponse;
import com.pavan.rbac.dto.LoginResponse;
import com.pavan.rbac.dto.RegisterResponse;



@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {

    private final UserService userService;

    @PostMapping("/register")
    public ApiResponse<RegisterResponse> register(@RequestBody RegisterRequest request) {
        RegisterResponse response = userService.register(request);
        return new ApiResponse<>(true, "Registration successful", response);
    }

    @PostMapping("/login")
    public ApiResponse<LoginResponse> login(@RequestBody LoginRequest request) {
        LoginResponse response = userService.login(request);
        return new ApiResponse<>(true, "Login successful", response);
    }
}
