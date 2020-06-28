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
@Table(name = "SS_STC")
public class SsStc extends AuditParameters {

    @EmbeddedId
    private SsStcKey ssStcKey;

    @ManyToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("STC_NO")
    @JoinColumn(name = "STC_NO")
    private STaxComputation sTaxComputation;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("SERVICE_NO")
    @JoinColumn(name = "SERVICE_NO")
    private ServiceSite serviceSite;
}