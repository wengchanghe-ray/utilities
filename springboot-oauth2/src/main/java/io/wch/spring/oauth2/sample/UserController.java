package io.wch.spring.oauth2.sample;

import java.security.Principal;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("users")
public class UserController {

    @GetMapping("me")
    public Principal me(Principal principal) {
        return principal;
    }
}