package com.gustavo.dslearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gustavo.dslearn.dto.NotificationDTO;
import com.gustavo.dslearn.entities.User;
import com.gustavo.dslearn.repositories.NotificationRepository;

@Service
public class NotificationService {

	@Autowired
	private NotificationRepository repository;
	
	@Autowired
	private AuthService authService;
	
	@Transactional(readOnly = true)
	public Page<NotificationDTO> notificationsForCurrentUser(boolean unreadOnly, PageRequest pageRequest){
		User user = authService.authenticated();
		return repository.find(user, unreadOnly, pageRequest).map( notification -> new NotificationDTO(notification));
	}
	
}
