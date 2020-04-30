package com.itrgst.orm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.itrgst.orm.AuditParameters;

import lombok.Data;

@Data
@Entity
@Table(name = "SERVICE_SITE")
public class ServiceSite extends AuditParameters {
	
	@Id
	@Column(name = "SERVICE_ID")
	private String serviceId;

	@Column(name = "SERVICE_NAME")
	private String serviceName;

	@Column(name = "SERVICE_HEAD")
	private String serviceHead;

	@Column(name = "SERVICE_INTRO")
	private String serviceIntro;

	@Column(name = "ELIGIBILITY")
	private String eligibility;

	@Column(name="TURNOVER_LIMIT")
	private String turnoverLimit;

	@Column(name = "PENALTY")
	private String penalty;

}
