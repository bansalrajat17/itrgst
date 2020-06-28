package com.itrgst.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Data;

@Data
@Embeddable
public class AnswerHeadingKey implements Serializable{
    
    private static final long serialVersionUID = 1L;

    @Column(name = "ATH_NO")
    Long athNo;

    @Column(name = "ANSWER_NO")
    Long answerNo;
}