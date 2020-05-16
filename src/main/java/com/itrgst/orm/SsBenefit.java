package com.itrgst.orm;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "SS_BENEFIT")
public class SsBenefit extends AuditParameters{
    
    @EmbeddedId
    private SsBenefitKey ssBenefitKey;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("BENEFIT_NO")
    @JoinColumn(name = "BENEFIT_NO")
    private SBenefit sBenefit;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("SERVICE_NO")
    @JoinColumn(name = "SERVICE_NO")
    private ServiceSite serviceSite;

}