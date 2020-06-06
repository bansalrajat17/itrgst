package com.itrgst.orm;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "S_PACKAGE")
public class SPackage extends Site {

	@Column(name="AMOUNT")
	private Long amount;

	@JsonIgnore
	@OneToMany(mappedBy = "sPackage")
	private Set<SsPackage> ssPackageSet;

}