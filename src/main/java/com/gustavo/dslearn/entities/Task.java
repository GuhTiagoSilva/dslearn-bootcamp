package com.gustavo.dslearn.entities;

import java.time.Instant;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tb_task") // when we extends from another class, we just need to do this mapping (Entity and Table). The other attributes do not need mapping
public class Task extends Lesson {

	private static final long serialVersionUID = 1L;

	private String description;

	private Integer questionCount;

	private Integer approvalAccount;

	private Double weight;

	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant dueDate;

	public Task() {

	}

	public Task(Long id, String title, Integer position, Section section, String description, Integer questionCount,
			Integer approvalAccount, Double weight, Instant dueDate) {
		super(id, title, position, section);
		this.description = description;
		this.questionCount = questionCount;
		this.approvalAccount = approvalAccount;
		this.weight = weight;
		this.dueDate = dueDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getQuestionCount() {
		return questionCount;
	}

	public void setQuestionCount(Integer questionCount) {
		this.questionCount = questionCount;
	}

	public Integer getApprovalAccount() {
		return approvalAccount;
	}

	public void setApprovalAccount(Integer approvalAccount) {
		this.approvalAccount = approvalAccount;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Instant getDueDate() {
		return dueDate;
	}

	public void setDueDate(Instant dueDate) {
		this.dueDate = dueDate;
	}

}
