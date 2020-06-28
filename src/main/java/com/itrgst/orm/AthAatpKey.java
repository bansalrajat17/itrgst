package com.itrgst.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Data;

@Data
@Embeddable
public class AthAatpKey implements Serializable{
 
    private static final long serialVersionUID = 1L;

    @Column(name = "ATH_NO")
    private Long athNo;

    @Column(name = "AATP_NO")
    private Long aatpNo;
}