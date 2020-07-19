package com.niit.tlc.service;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.tlc.model.User;
import com.niit.tlc.repository.UserRepository;


@Service
@Transactional
public class UserService {

	@Autowired
	private UserRepository userDao;

	public void save(User customer) {
		String plainPassword=customer.getPassword();
		String cipherPassword=encryptPass(plainPassword);
		customer.setPassword(cipherPassword);
		userDao.save(customer);
	}
	
	private String encryptPass(String pass) {
		Base64.Encoder encoder = Base64.getEncoder();
		String normalString = pass;
		String encodedString = encoder.encodeToString(normalString.getBytes(StandardCharsets.UTF_8));
		return encodedString;
	}

	public User login(User loginUser) {
	
		String plainPassword=loginUser.getPassword();
		String cipherPassword=encryptPass(plainPassword);
		Optional<User> user=userDao.findByEmailAndPassword(loginUser.getEmail(),cipherPassword);
		if(user.isPresent())
		{
			return user.get();
		}
		else
		{
		
			return null;
		}
	}

	public List<User> findByFromDateTODate(Date fromDate, Date toDate) {
		// TODO Auto-generated method stub
		return userDao.findByRegisteredDateBetween(fromDate,toDate);
	}

	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}
}
