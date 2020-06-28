package com.itrgst.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Data;

@Data
@Embeddable
public class SsFaqKey implements Serializable {

    @Column(name = "QUESTION_NO")
    private Long questionNo;

    @Column(name = "ANSWER_NO")
    private Long answerNo;

    @Column(name = "SERVICE_NO")
    private Long serviceNo;

}