package com.pavan.rbac.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/case")
public class CaseController {

    // ADMIN → access all
    @GetMapping("/all")
    @PreAuthorize("hasRole('ADMIN')")
    public String adminAccess() {
        return "Admin: Access all cases";
    }

    // COORDINATOR → create case
    @PostMapping("/create")
    @PreAuthorize("hasRole('COORDINATOR')")
    public String createCase() {
        return "Coordinator: Case created";
    }

    // ENGINEER → update case
    @PutMapping("/update")
    @PreAuthorize("hasRole('ENGINEER')")
    public String updateCase() {
        return "Engineer: Case updated";
    }

    // DRAFTER → drafting
    @PutMapping("/draft")
    @PreAuthorize("hasRole('DRAFTER')")
    public String draftCase() {
        return "Drafter: Draft updated";
    }

    // FINALIZER → complete
    @PutMapping("/complete")
    @PreAuthorize("hasRole('FINALIZER')")
    public String completeCase() {
        return "Finalizer: Case completed";
    }
}
