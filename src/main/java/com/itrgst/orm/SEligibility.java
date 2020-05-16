package com.itrgst.orm;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "S_ELIGIBILITY")
public class SEligibility extends Site {

	@JsonIgnore
	@OneToMany(mappedBy = "sEligibility")
	private Set<SsEligibility> ssEligibilitySet;

}