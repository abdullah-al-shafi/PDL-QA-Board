package com.pondit.practice.dto;

import java.io.Serializable;
import java.time.LocalDate;

public class UserDto implements Serializable {
    private String username;
    private String password;
    private String fullName;
    private String email;
    private String gender;
    private LocalDate dob;
    private String role;
    private Boolean activeStatus;
    private String profilePic;
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public LocalDate getDob() {
        return dob;
    }
    public void setDob(LocalDate dob) {
        this.dob = dob;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
    public Boolean getActiveStatus() {
        return activeStatus;
    }
    public void setActiveStatus(Boolean activeStatus) {
        this.activeStatus = activeStatus;
    }
    public String getProfilePic() {
        return profilePic;
    }
    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }
}
