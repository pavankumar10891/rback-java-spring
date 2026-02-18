package com.pavan.rbac.dto;

import com.pavan.rbac.entity.Role;
import lombok.Data;
import java.util.Set;

@Data
public class RegisterRequest {
    private String username;
    private String password;
    private String email;
    private Set<Role> roles;
}
