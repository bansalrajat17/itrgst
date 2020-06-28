package com.itrgst.orm;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import lombok.Data;

@Data
@Entity
@Table(name = "ANSWER_HEADING")
public class AnswerHeading extends AuditParameters{

    @EmbeddedId
    private AnswerHeadingKey answerHeadingKey;

    @OneToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("ATH_NO")
    @JoinColumn(name = "ATH_NO")
    private AnswerTableHeading answerTableHeading;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("ANSWER_NO")
    @JoinColumn(name = "ANSWER_NO")
    private SAnswer sAnswer;

    @JsonIgnore
    public SAnswer getsAnswer() {
        return sAnswer;
    }

}