package com.itrgst.orm;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import lombok.Data;

@Data
@Entity
@Table(name = "ATH_AATP")
public class AthAatp extends AuditParameters{
    
    @EmbeddedId
    private AthAatpKey athAatpKey;

    @ManyToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("AATP_NO")
    @JoinColumn(name = "AATP_NO")
    private AtpAnswerTablePoint atpAnswerTablePoint;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("ATH_NO")
    @JoinColumn(name = "ATH_NO")
    private AnswerTableHeading answerTableHeading;

}