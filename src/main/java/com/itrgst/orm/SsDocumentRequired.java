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
@Table(name = "SS_DOCUMENT_REQUIRED")
public class SsDocumentRequired extends AuditParameters {

    @EmbeddedId
    private SsDocumentRequiredKey ssDocumentRequiredKey;

    @ManyToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("DOCUMENT_NO")
    @JoinColumn(name = "DOCUMENT_NO")
    private SDocumentRequired sDocumentRequired;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("SERVICE_NO")
    @JoinColumn(name = "SERVICE_NO")
    private ServiceSite serviceSite;
    
}