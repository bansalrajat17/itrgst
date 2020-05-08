package com.itrgst.orm;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.itrgst.orm.AuditParameters;


import lombok.Data;

@Data
@Entity
@Table(name = "S_ELIGIBILITY")
public class SEligibility extends AuditParameters {
	
	@Id
	@Column(name = "ELIGIBILITY_ID")
	private Long eligibilityId;

	@Column(name = "ELIGIBILITY_DESC")
    private String eligibilityDesc;
	
	@JsonBackReference
    @ManyToMany
	@JoinTable(name = "SS_ELIGIBILITY", joinColumns = @JoinColumn(name = "ELIGIBILITY_ID"), inverseJoinColumns = @JoinColumn(name = "SERVICE_ID"))
	private List<ServiceSite> serviceSiteList;

}