package com.pavan.rbac.dto;

import com.pavan.rbac.entity.Role;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Set;

@Data
@AllArgsConstructor
public class LoginResponse {
    private String token;
    private String username;
    private String email;
    private Set<Role> roles;
}
