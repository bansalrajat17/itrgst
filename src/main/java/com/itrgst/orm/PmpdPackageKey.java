package com.itrgst.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class PmpdPackageKey implements Serializable{
    
    @Column(name = "PM_NO")
    private Long pmNo;

    @Column(name = "PD_NO")
    private Long pdNo;

}