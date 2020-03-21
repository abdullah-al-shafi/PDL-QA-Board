package com.pondit.practice.controllers;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pondit.practice.enums.Role;
import com.pondit.practice.model.User;
import com.pondit.practice.repositories.UserRepository;

// For showing index.jsp instead of showing the "not found page" error
@Controller
public class RootController {
	
	
	private final UserRepository userRepository;
	private final PasswordEncoder passwordEncoder;

	public RootController(UserRepository userRepository, PasswordEncoder passwordEncoder) {
		this.userRepository = userRepository;
		this.passwordEncoder = passwordEncoder;
	}
	
	@GetMapping("/")
	public String root() {
		return "index";
	}
	
	@GetMapping("/403")
	public String _403() {
		return "403";
	}
	
	@GetMapping("/login")
	public String login(Model model, @RequestParam(name="error", required = false) String error) {
		generateUsers();
		model.addAttribute("error", error);
		return "login";
	}
	
	@GetMapping("/register")
	public String Register() {
		return "register";
	}

	private void generateUsers() {

		if (userRepository.findByUsername("admin").isEmpty()) {
			var user = new User();
			user.setUsername("admin");
			user.setPassword(passwordEncoder.encode("admin"));
			user.setRole(Role.ROLE_ADMIN);
			userRepository.save(user);
		}

	}
}
