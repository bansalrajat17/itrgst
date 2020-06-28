package com.itrgst.orm;

import java.util.ArrayList;
import java.util.List;

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
@Table(name = "ATP_ANSWER_TABLE_POINT")
public class AtpAnswerTablePoint extends AuditParameters {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "NO")
    Long no;

	@Column(name = "DESCRIPTION")
    private String description;
    
    @JsonIgnore
    @OneToMany(mappedBy = "atpAnswerTablePoint")
    private List<AthAatp> athAatpList = new ArrayList<>(); 

}