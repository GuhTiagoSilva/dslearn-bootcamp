package com.gustavo.dslearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.gustavo.dslearn.entities.User;
import com.gustavo.dslearn.repositories.UserRepository;
import com.gustavo.dslearn.services.exceptions.ForbiddenException;
import com.gustavo.dslearn.services.exceptions.UnauthorizedException;

@Service
public class AuthService {

	@Autowired
	private UserRepository repository;
	
	@Transactional(readOnly = true)
	public User authenticated() {
		try {

			String username = SecurityContextHolder.getContext().getAuthentication().getName(); // get the current username logged
			return repository.findByEmail(username);

		} catch (Exception e) {
			throw new UnauthorizedException("Invalid User");
		}
	}
	
	public void validateSelfOrAdmin(Long userId) {
		User user = authenticated();
		if(!user.getId().equals(userId) && !user.hasRole("ROLE_ADMIN")) {
			throw new ForbiddenException("Access Denied");
		}
	}
}
