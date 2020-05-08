package com.itrgst.orm;

import java.util.List;

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
@Table(name = "S_BENEFIT")
public class SBenefit extends AuditParameters {
	
	@Id
	@Column(name = "BENEFIT_ID")
	private Long benefitId;

	@Column(name = "BENEFIT_NAME")
    private String benefitName;
	
	@JsonBackReference
    @ManyToMany
	@JoinTable(name = "SS_BENEFIT", joinColumns = @JoinColumn(name = "BENEFIT_ID"), inverseJoinColumns = @JoinColumn(name = "SERVICE_ID"))
	private List<ServiceSite> serviceSiteList;

}
