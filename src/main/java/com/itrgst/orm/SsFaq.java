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

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "SS_FAQ")
public class SsFaq extends AuditParameters {
    
    @EmbeddedId
    private SsFaqKey ssFaqKey;

    @OneToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("QUESTION_NO")
    @JoinColumn(name = "QUESTION_NO")
    private SQuestion sQuestion;

    @OneToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("ANSWER_NO")
    @JoinColumn(name = "ANSWER_NO")
    private SAnswer sAnswer;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("SERVICE_NO")
    @JoinColumn(name = "SERVICE_NO")
    private ServiceSite serviceSite;

}