package com.pavan.rbac.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class RegisterResponse {
    private Long id;
    private String username;
    private String email;
}
