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
@Table(name = "CS_CP")
public class CsCp extends AuditParameters{
    
    @EmbeddedId
    private CsCpKey csCpKey;

    @ManyToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("CP_NO")
    @JoinColumn(name = "CP_NO")
    private ContentPoint contentPoint;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("CS_NO")
    @JoinColumn(name = "CS_NO")
    private ContentSite contentSite;

}