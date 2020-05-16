package com.itrgst.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Data;

@Data
@Embeddable
public class SsEligibilityKey implements Serializable{
    
    @Column(name = "SERVICE_NO")
    private Long serviceNo;

    @Column(name = "ELIGIBILITY_NO")
    private Long eligibilityNo;
}