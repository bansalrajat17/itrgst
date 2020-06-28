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
@Table(name = "STC_HEADING")
public class StcHeading extends AuditParameters {

    @EmbeddedId
    private StcHeadingKey stcHeadingKey;

    @OneToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("ATH_NO")
    @JoinColumn(name = "ATH_NO")
    private AnswerTableHeading answerTableHeading;

    @ManyToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("STC_NO")
    @JoinColumn(name = "STC_NO")
    private STaxComputation sTaxComputation;

    @JsonIgnore
    public STaxComputation getsTaxComputation() {
        return sTaxComputation;
    }

}