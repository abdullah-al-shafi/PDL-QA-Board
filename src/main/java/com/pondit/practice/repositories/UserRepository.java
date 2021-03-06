package com.pondit.practice.repositories;

import com.pondit.practice.dto.UserDto;
import com.pondit.practice.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Repository
@Transactional
public interface UserRepository extends JpaRepository<User, Long> {

	Optional<User> findByUsername(String username);


	User findByusername(String name);
//	User findById(String name);
//	 User updateUserByUserId(Optional<User> user);

}
