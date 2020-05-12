package com.itrgst.orm;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import lombok.Data;

@Data
@Entity
@Table(name = "SERVICE_SITE")
public class ServiceSite extends Site {

	@JsonManagedReference
	@Fetch(FetchMode.JOIN)
	@ManyToMany
	@JoinTable(name = "SS_ELIGIBILITY", joinColumns = @JoinColumn(name = "ELIGIBILITY_NO"), inverseJoinColumns = @JoinColumn(name = "NO"))
	private List<SEligibility> sEligibilityList;

	@JsonManagedReference
	//@Fetch(FetchMode.JOIN)
	@ManyToMany
	@JoinTable(name = "SS_DOC_REQ", joinColumns = @JoinColumn(name = "DOCUMENT_NO"), inverseJoinColumns = @JoinColumn(name = "NO"))
	private List<SDocumentRequired> sDocumentRequiredList;

	@JsonManagedReference
	//@Fetch(FetchMode.JOIN)
	@ManyToMany
	@JoinTable(name = "SS_BENEFIT", joinColumns = @JoinColumn(name = "BENEFIT_NO"), inverseJoinColumns = @JoinColumn(name = "NO"))
	private List<SBenefit> sBenefitList;

	

}
