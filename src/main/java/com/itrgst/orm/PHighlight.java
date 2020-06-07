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

import lombok.Data;

@Data
@Entity
@Table(name = "P_HIGHLIGHT")
public class PHighlight extends AuditParameters {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "NO")
    Long no;

    @Column(name = "DESCRIPTION")
    String description;

	@JsonIgnore
	@OneToMany(mappedBy = "pHighlight")
	private Set<PpHighlight> ppHighlightSet = new HashSet<>();

}
