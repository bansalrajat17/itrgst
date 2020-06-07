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

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "PMPD_PACKAGE")
public class PmpdPackage extends AuditParameters{
    
    @EmbeddedId
    private PmpdPackageKey pmpdPackageKey;
    
    @ManyToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("PM_NO")
    @JoinColumn(name = "PM_NO")
    private SPackageMaster sPackageMaster;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("PD_NO")
    @JoinColumn(name = "PD_NO")
    private SPackageDetail sPackageDetail;
}