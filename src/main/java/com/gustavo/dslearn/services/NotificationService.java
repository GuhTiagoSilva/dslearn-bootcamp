package com.gustavo.dslearn.services;

import java.time.Instant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gustavo.dslearn.dto.NotificationDTO;
import com.gustavo.dslearn.entities.Deliver;
import com.gustavo.dslearn.entities.Notification;
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
	
	@Transactional
	public void saveDeliverNotification(Deliver deliver) {
		
		Long sectionId = deliver.getLesson().getSection().getId();
		Long resourceId = deliver.getLesson().getSection().getResource().getId();
		Long offerId = deliver.getLesson().getSection().getResource().getOffer().getId();
		
		String route = "/offers/" + offerId + "/resources/" + resourceId + "/sections/" + sectionId;
		String text = deliver.getFeedback();
		Instant moment = Instant.now();
		User student = deliver.getEnrollment().getStudent();
		
		
		Notification notification = new Notification(null, text, moment, false, route, student);
		repository.save(notification);
	}
	
}
