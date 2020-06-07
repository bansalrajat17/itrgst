package com.itrgst.orm;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "S_PACKAGE_MASTER")
public class SPackageMaster extends AuditParameters{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "NO")
    Long no;

    @Column(name = "NAME")
    String name;

	@JsonIgnore
	@OneToMany(mappedBy = "sPackageMaster")
	private Set<PmpdPackage> pmpdPackageSet = new HashSet<>();
}