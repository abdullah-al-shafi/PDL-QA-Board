package com.pondit.practice.controllers;

import com.pondit.practice.dto.UserDto;
import com.pondit.practice.service.UserService;
import com.pondit.practice.util.Util;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pondit.practice.enums.Role;
import com.pondit.practice.model.User;
import com.pondit.practice.repositories.UserRepository;

import javax.print.attribute.standard.PresentationDirection;
import java.time.LocalDate;
import java.util.LinkedHashMap;
import java.util.Map;

// For showing index.jsp instead of showing the "not found page" error
@Controller
public class RootController {


	private final UserRepository userRepository;
	private final PasswordEncoder passwordEncoder;


	@Autowired
	UserService userService;

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
	public String registerNew(Model model, @RequestParam(name = "error", required = false) String error) {

		Map<String, String> genders = new LinkedHashMap<String, String>();
		genders.put("M", "Male");
		genders.put("F", "Female");
		model.addAttribute("genders", genders);
		User user = new User();
		model.addAttribute("user", user);
		return "register";
	}

	@PostMapping("/register")
	public String registerNewUser(@ModelAttribute("user") User user, Model model) {

		UserDto userDto = new UserDto();
		BeanUtils.copyProperties(user, userDto);
//		LocalDate dob = Util.getFormattedDate(userDto.getDob().toString(),Util.DOB_DATE_FORMAT);
//		userDto.setDob(dob);
		userDto.setPassword(passwordEncoder.encode(user.getPassword()));
		userService.addUser(userDto);
		return  "login";
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
