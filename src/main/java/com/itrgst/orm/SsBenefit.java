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
@Table(name = "SS_BENEFIT")
public class SsBenefit extends AuditParameters{
    
    @EmbeddedId
    private SsBenefitKey ssBenefitKey;

    @ManyToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("BENEFIT_NO")
    @JoinColumn(name = "BENEFIT_NO")
    private SBenefit sBenefit;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("SERVICE_NO")
    @JoinColumn(name = "SERVICE_NO")
    private ServiceSite serviceSite;

}