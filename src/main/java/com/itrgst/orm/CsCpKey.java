package com.itrgst.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Data;

@Data
@Embeddable
public class CsCpKey implements Serializable{
    
    @Column(name = "CS_NO")
    private Long csNo;

    @Column(name = "CP_NO")
    private Long cpNo;
}