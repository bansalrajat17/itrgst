package com.itrgst.orm;

import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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

	@OneToMany(mappedBy = "serviceSite", fetch = FetchType.EAGER)
	private Set<SsEligibility> ssEligibilitySet;

	/*
	@OneToMany(mappedBy = "serviceSite",fetch = FetchType.EAGER)
	private Set<SsDocumentRequired> ssDocumentRequiredSet;

	

	@OneToMany(mappedBy = "serviceSite",fetch = FetchType.EAGER)
	private Set<SsBenefit> ssBenefitSet;*/

}
