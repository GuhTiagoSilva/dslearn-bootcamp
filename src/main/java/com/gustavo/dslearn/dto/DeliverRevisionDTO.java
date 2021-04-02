package com.gustavo.dslearn.dto;

import java.io.Serializable;

import com.gustavo.dslearn.entities.enums.DeliverStatus;

public class DeliverRevisionDTO implements Serializable {

	private static final long serialVersionUID = 1L;

	private DeliverStatus deliverStatus;
	
	private String feedback;
	
	private Integer correctCount;
	
	public DeliverRevisionDTO() {
		
	}

	public DeliverRevisionDTO(DeliverStatus deliverStatus, String feedback, Integer correctCount) {
		super();
		this.deliverStatus = deliverStatus;
		this.feedback = feedback;
		this.correctCount = correctCount;
	}

	public DeliverStatus getDeliverStatus() {
		return deliverStatus;
	}

	public void setDeliverStatus(DeliverStatus deliverStatus) {
		this.deliverStatus = deliverStatus;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public Integer getCorrectCount() {
		return correctCount;
	}

	public void setCorrectCount(Integer correctCount) {
		this.correctCount = correctCount;
	}

}
