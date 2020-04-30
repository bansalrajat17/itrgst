package com.itrgst.orm;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class AuditParameters implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name = "CREATED_DATE", nullable = false, updatable = false)
	@CreatedDate
	protected Date createdDate = new Date();

	@Column(name = "MODIFIED_DATE")
	@LastModifiedDate
	protected Date modifiedDate = new Date();

	@Column(name = "CREATED_BY")
	@CreatedBy
	protected String createdBy;

	@Column(name = "MODIFIED_BY")
	@LastModifiedBy
	protected String modifiedBy;
}
