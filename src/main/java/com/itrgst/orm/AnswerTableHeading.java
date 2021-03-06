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


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "ANSWER_TABLE_HEADING")
public class AnswerTableHeading extends AuditParameters {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "NO")
    Long no;

	@Column(name = "HEADING")
    private String heading;

    @OneToMany(mappedBy = "answerTableHeading")
    private List<AthAatp> athAatpList = new ArrayList<>();
    
}