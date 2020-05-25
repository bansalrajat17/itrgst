package com.itrgst.orm;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "SERVICE_SITE")
public class ServiceSite extends Site {

	@OneToMany(mappedBy = "serviceSite",fetch = FetchType.EAGER)
	@Fetch(FetchMode.JOIN)
	private Set<SsEligibility> ssEligibilitySet = new HashSet<>();
	
	@OneToMany(mappedBy = "serviceSite",fetch = FetchType.EAGER)
	@Fetch(FetchMode.JOIN)
	private List<SsDocumentRequired> ssDocumentRequiredList = new ArrayList<>();

	@JsonIgnore
	@OneToMany(mappedBy = "serviceSite")
	private Set<SsBenefit> ssBenefitSet = new HashSet<>();

}
