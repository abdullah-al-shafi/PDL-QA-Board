package com.pondit.practice.service;
import com.pondit.practice.dto.UserDto;
import com.pondit.practice.enums.Role;
import com.pondit.practice.exceptions.ResourceAlreadyExistsException;
//import com.pondit.practice.model.User;
import com.pondit.practice.repositories.UserRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
public class UserService implements UserDetailsService {

    private final UserRepository userRepository;


    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public Optional<com.pondit.practice.model.User> getUserByUserId(Long id) {
        return userRepository.findById(id);
    }
    public Optional<com.pondit.practice.model.User> getUserByUserName(String s) {
        return userRepository.findByUsername(s);
    }
    public com.pondit.practice.model.User getUserByName(String s) {
        return userRepository.findByusername(s);
    }




    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        var userFromDb = userRepository.findByUsername(s)
                .orElseThrow(() -> new UsernameNotFoundException("No user found with this email address."));
        List<GrantedAuthority> authorities = new java.util.ArrayList<>(Collections.emptyList());

        authorities.add((GrantedAuthority) () -> userFromDb.getRole().name());

        return new User(userFromDb.getUsername(), userFromDb.getPassword(), authorities);
    }

    public void addUser(UserDto userDto) {
        LocalDateTime entry_date = LocalDateTime.now();
        checkUserInList(userDto);
        var userEntity = new com.pondit.practice.model.User();
        BeanUtils.copyProperties(userDto, userEntity);
        userEntity.setActiveStatus(true);
        userEntity.setRole(Role.ROLE_USER);
        userEntity.setEntryDate(entry_date);
        userEntity.setUpdateDate(entry_date);
        userRepository.save(userEntity);
    }

    private void checkUserInList(UserDto userDto) {

        var username = userRepository.findByusername(userDto.getUsername());
//        var userEmail = userRepository.findByEmail(userDto.getEmail());

        if (username != null) {
            throw new ResourceAlreadyExistsException("UserName Already exists");
        }
//        if (userEmail != null) {
//            throw new DuplicateRequestException("Email Already Used");
//        }

    }

//    public void updateUserByUserId(Optional<com.pondit.practice.model.User> user) {
//        userRepository.updateUserByUserId(user);
//    }

}





