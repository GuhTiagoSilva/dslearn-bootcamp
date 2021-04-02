package com.gustavo.dslearn.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gustavo.dslearn.dto.NotificationDTO;
import com.gustavo.dslearn.services.NotificationService;

@RestController
@RequestMapping("/notifications")
public class NotificationResource {

	@Autowired
	private NotificationService service;

	@GetMapping
	public ResponseEntity<Page<NotificationDTO>> find(
			@RequestParam(value = "unreadOnly", defaultValue = "false") Boolean unreadOnly,
			@RequestParam(value = "page", defaultValue = "0") Integer page,
			@RequestParam(value = "size", defaultValue = "12") Integer size,
			@RequestParam(value = "direction", defaultValue = "DESC") String direction,
			@RequestParam(value = "orderBy", defaultValue = "moment") String orderBy) {

		PageRequest pageRequest = PageRequest.of(page, size, Direction.valueOf(direction), orderBy);
		Page<NotificationDTO> notificationList = service.notificationsForCurrentUser(unreadOnly, pageRequest);
		return ResponseEntity.ok().body(notificationList);
	}

}
