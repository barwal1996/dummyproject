package com.niit.tlc.repository;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.tlc.model.User;


public interface UserRepository extends JpaRepository<User, String> {

	Optional<User>
	findByEmailAndPassword(String email, String password);

	List<User> findByRegisteredDateBetween(Date fromDate, Date toDate);

}
