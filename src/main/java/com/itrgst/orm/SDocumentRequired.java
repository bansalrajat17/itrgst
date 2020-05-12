package com.itrgst.orm;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.itrgst.orm.AuditParameters;


import lombok.Data;

@Data
@Entity
@Table(name = "S_DOCUMENT_REQUIRED")
public class SDocumentRequired extends Site {
	
	
	@JsonBackReference
    @ManyToMany
	@JoinTable(name = "SS_DOC_REQ", joinColumns = @JoinColumn(name = "SERVICE_NO"), inverseJoinColumns = @JoinColumn(name = "NO"))
	private List<ServiceSite> serviceSiteList;
	

}