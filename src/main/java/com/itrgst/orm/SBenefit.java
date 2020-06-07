package com.itrgst.orm;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "S_BENEFIT")
public class SBenefit extends Site {
	
	@JsonIgnore
	@OneToMany(mappedBy = "sBenefit")
	private Set<SsBenefit> ssBenefitSet = new HashSet<>();

}
