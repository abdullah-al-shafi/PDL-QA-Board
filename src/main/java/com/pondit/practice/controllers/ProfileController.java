package com.pondit.practice.controllers;

import com.pondit.practice.dto.ProfileUpdateDto;
import com.pondit.practice.dto.UserDto;
import com.pondit.practice.model.User;
import com.pondit.practice.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Optional;

@Controller
public class ProfileController {

    @Autowired
    UserService userService;

    private final PasswordEncoder passwordEncoder;

    public ProfileController( PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/user/profile")
    public String viewProfile(Model model, Authentication authentication) {
        Optional<User> user = Optional.ofNullable(userService.getUserByName(authentication.getName()));

        UserDto userDto = new UserDto();
        BeanUtils.copyProperties(user, userDto);
        model.addAttribute("user", user);

        return "profile/show-profile";
    }

//
//    @GetMapping("/user/profile/edit/{id}")
//    public String viewProfileEdit(Model model, @PathVariable("id") Long id) {
//        Optional<User> user = userService.getUserByUserId(id);
//        ProfileUpdateDto userDto = new ProfileUpdateDto();
//        BeanUtils.copyProperties(user, userDto);
//        model.addAttribute("user", user);
//        return "edit-profile";
//    }
//
//    @PostMapping("/user/profile/edit")
//    public String updateProfile(Model model, @Validated @ModelAttribute("user") ProfileUpdateDto userDto, @RequestParam("file") MultipartFile file, BindingResult bindingResult) {
//        if (!bindingResult.hasErrors()) {
//           Optional<User> user = userService.getUserByUserId(Long.parseLong(userDto.getUsername()));
//            BeanUtils.copyProperties(userDto, user);
////            String profileImageUrl = uploadFile(file);
////            if (profileImageUrl != null && !profileImageUrl.isEmpty()) {
////                user.setProfilePic(profileImageUrl);
////            }
////            userService.updateUserByUserId(user);
//            model.addAttribute("message", "Profile Update Successfully!");
//            return "redirect:/user/profile";
//        }
//        return "edit-profile";
//    }

}
