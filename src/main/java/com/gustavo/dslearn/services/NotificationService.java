package com.gustavo.dslearn.services;

import java.time.Instant;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gustavo.dslearn.dto.NotificationDTO;
import com.gustavo.dslearn.entities.Deliver;
import com.gustavo.dslearn.entities.Notification;
import com.gustavo.dslearn.entities.User;
import com.gustavo.dslearn.observers.DeliverRevisionObserver;
import com.gustavo.dslearn.repositories.NotificationRepository;

@Service
public class NotificationService implements DeliverRevisionObserver {

	@Autowired
	private NotificationRepository repository;
	
	@Autowired
	private AuthService authService;
	
	@Autowired
	private DeliverService deliverService;
	
	@PostConstruct // after the creation of NotificationService, the initialize() method will run and subscribe the object in the list of observers
	private void initialize() {
		deliverService.subscribeDeliverRevisionObserver(this);
	}
	
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

	@Override
	public void onSaveRevision(Deliver deliver) {
		saveDeliverNotification(deliver);
	}
}
