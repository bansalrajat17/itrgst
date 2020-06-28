package com.itrgst.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Data;

@Data
@Embeddable
public class StcHeadingKey implements Serializable {
    
    @Column(name = "STC_NO")
    private Long stcNo;

    @Column(name = "ATH_NO")
    private Long athNo;
}