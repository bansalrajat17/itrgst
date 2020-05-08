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
@Table(name = "S_DOCUMENT_REQUIRED")
public class SDocumentRequired extends AuditParameters {
	
	@Id
	@Column(name = "DOCUMENT_ID")
	private Long documentId;

	@Column(name = "DOCUMENT_NAME")
	private String documentName;

	@Column(name = "DOCUMENT_DESC")
    private String documentDesc;
	
	@JsonBackReference
    @ManyToMany
	@JoinTable(name = "SS_DOC_REQ", joinColumns = @JoinColumn(name = "DOCUMENT_ID"), inverseJoinColumns = @JoinColumn(name = "SERVICE_ID"))
	private List<ServiceSite> serviceSiteList;

}