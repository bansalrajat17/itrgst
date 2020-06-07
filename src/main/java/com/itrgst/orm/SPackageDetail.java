package com.itrgst.orm;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "S_PACKAGE_DETAIL")
public class SPackageDetail extends AuditParameters {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "NO")
    Long no;

	@Column(name = "DESCRIPTION")
	private String description;

	@Column(name = "AMOUNT")
	private Long amount;

	@JsonIgnore
	@OneToMany(mappedBy = "sPackageDetail")
	private List<PmpdPackage> pmpdPackageList = new ArrayList<>();

	@JsonIgnore
	@OneToMany(mappedBy = "sPackageDetail")
	private List<SsPackage> ssPackageList = new ArrayList<>();

	@OneToMany(mappedBy = "sPackageDetail")
	private List<PpHighlight> ppHighlightList = new ArrayList<>();

}