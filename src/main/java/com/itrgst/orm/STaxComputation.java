package com.itrgst.orm;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="S_TAX_COMPUTATION")
public class STaxComputation extends AuditParameters {

    @Id
    @Column(name="NO")
    private Long no;

    @Column(name="DESCRIPTION")
    private String description;

    @OneToMany(mappedBy = "sTaxComputation")
    private List<StcHeading> stcHeadingList = new ArrayList<>();
    
}