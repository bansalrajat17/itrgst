package com.itrgst.orm;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.Data;

@Data
@Entity
@Table(name = "S_BENEFIT")
public class SBenefit extends Site {
	
	@JsonBackReference
    @ManyToMany
	@JoinTable(name = "SS_BENEFIT", joinColumns = @JoinColumn(name = "SERVICE_NO"), inverseJoinColumns = @JoinColumn(name = "NO"))
	private List<ServiceSite> serviceSiteList;

}
