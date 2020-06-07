package com.itrgst.orm;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "S_DOCUMENT_REQUIRED")
public class SDocumentRequired extends Site {
	
	@JsonIgnore
	@OneToMany(mappedBy = "sDocumentRequired")
	private Set<SsDocumentRequired> ssDocumentRequiredSet = new HashSet<>();

}