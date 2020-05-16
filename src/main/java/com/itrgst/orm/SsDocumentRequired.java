package com.itrgst.orm;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "SS_DOCUMENT_REQUIRED")
public class SsDocumentRequired extends AuditParameters {

    @EmbeddedId
    private SsDocumentRequiredKey ssDocumentRequiredKey;

    @ManyToOne(fetch = FetchType.EAGER)
    @MapsId("DOC_NO")
    @JoinColumn(name = "DOC_NO")
    private SDocumentRequired sDocumentRequired;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("SERVICE_NO")
    @JoinColumn(name = "SERVICE_NO")
    private ServiceSite serviceSite;
    
}