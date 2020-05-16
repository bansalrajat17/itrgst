package com.itrgst.orm;


import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "SS_ELIGIBILITY")
public class SsEligibility extends AuditParameters{
    
    @EmbeddedId
    private SsEligibilityKey ssEligibilityKey;

    @JsonIgnore
    @ManyToOne
    @MapsId("ELIGIBILITY_NO")
    @JoinColumn(name = "ELIGIBILITY_NO")
    private SEligibility sEligibility;

    @JsonIgnore
    @ManyToOne
    @MapsId("SERVICE_NO")
    @JoinColumn(name = "SERVICE_NO")
    private ServiceSite serviceSite;
}