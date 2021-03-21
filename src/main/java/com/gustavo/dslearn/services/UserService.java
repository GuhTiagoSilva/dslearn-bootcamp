package com.gustavo.dslearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.gustavo.dslearn.entities.User;
import com.gustavo.dslearn.repositories.UserRepository;

@Service
public class UserService implements UserDetailsService {

	@Autowired
	private UserRepository repository;

	private static Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User user = repository.findByEmail(username);
		
		if (user == null) {
			logger.error("User Not Found: " + username);
			throw new UsernameNotFoundException("User Not Found: " + username);
		}
		return user;
	}
}
