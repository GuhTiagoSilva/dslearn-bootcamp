package com.gustavo.dslearn.services;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gustavo.dslearn.dto.UserDTO;
import com.gustavo.dslearn.entities.User;
import com.gustavo.dslearn.repositories.UserRepository;
import com.gustavo.dslearn.services.exceptions.ResourceNotFoundException;
import com.gustavo.dslearn.services.exceptions.UnauthorizedException;

@Service
public class UserService implements UserDetailsService {

	@Autowired
	private UserRepository repository;

	@Autowired
	private AuthService authService;

	private static Logger logger = LoggerFactory.getLogger(UserService.class);

	@Transactional(readOnly = true)
	public UserDTO findById(Long id) {
		authService.validateSelfOrAdmin(id);
		Optional<User> user = repository.findById(id);
		User entity = user.orElseThrow(() -> new ResourceNotFoundException("Entity Not Found"));
		return new UserDTO(entity);
	}

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
