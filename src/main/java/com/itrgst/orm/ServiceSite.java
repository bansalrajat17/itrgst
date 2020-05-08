package com.itrgst.orm;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.itrgst.orm.AuditParameters;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

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

	@JsonManagedReference
	@Fetch(FetchMode.JOIN)
	@ManyToMany
	@JoinTable(name = "SS_ELIGIBILITY", joinColumns = @JoinColumn(name = "SERVICE_ID"), inverseJoinColumns = @JoinColumn(name = "ELIGIBILITY_ID"))
	private List<SEligibility> sEligibilityList;

	@JsonManagedReference
	//@Fetch(FetchMode.JOIN)
	@ManyToMany
	@JoinTable(name = "SS_DOC_REQ", joinColumns = @JoinColumn(name = "SERVICE_ID"), inverseJoinColumns = @JoinColumn(name = "DOCUMENT_ID"))
	private List<SDocumentRequired> sDocumentRequiredList;

	@JsonManagedReference
	//@Fetch(FetchMode.JOIN)
	@ManyToMany
	@JoinTable(name = "SS_BENEFIT", joinColumns = @JoinColumn(name = "SERVICE_ID"), inverseJoinColumns = @JoinColumn(name = "BENEFIT_ID"))
	private List<SBenefit> sBenefitList;

}
