package com.itrgst.orm;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "S_ANSWER")
public class SAnswer extends AuditParameters {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "NO")
    Long no;

	@Column(name = "ANSWER")
    private String ANSWER;
    
    @JsonIgnore
    @OneToOne(mappedBy = "sAnswer")
    private SsFaq ssFaq;

    @OneToMany(mappedBy = "sAnswer")
    private List<AnswerHeading> answerHeadingList = new ArrayList<>();

}