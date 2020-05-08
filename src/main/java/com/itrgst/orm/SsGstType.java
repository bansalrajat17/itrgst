package com.itrgst.orm;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.itrgst.orm.AuditParameters;

import lombok.Data;

@Data
@Entity
@Table(name = "SS_GST_TYPE")
public class SsGstType extends AuditParameters {
	
	@Id
	@Column(name = "RETURN_TYPE")
	private String returnType;

	@Column(name = "INCLUDES")
	private String includes;

	@Column(name = "DUE_DATE")
	private String dueDate;

	@Column(name = "WHEN_TO_FILE")
	private String whenToFile;

}