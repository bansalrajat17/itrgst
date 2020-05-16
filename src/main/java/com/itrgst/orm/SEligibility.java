package com.itrgst.orm;

import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "S_ELIGIBILITY")
public class SEligibility extends Site {

	@JsonIgnore
	@OneToMany(mappedBy = "sEligibility")
	private List<SsEligibility> ssEligibilitySet;

}