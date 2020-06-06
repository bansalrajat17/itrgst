package com.itrgst.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Data;

@Data
@Embeddable
public class SsPackageKey implements Serializable {
    
    @Column(name = "SERVICE_NO")
    private Long serviceNo;

    @Column(name = "PACKAGE_NO")
    private Long packageNo;
}