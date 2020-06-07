package com.itrgst.orm;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import lombok.Data;

@Data
@Entity
@Table(name = "PP_HIGHLIGHT")
public class PpHighlight extends AuditParameters{
    
    @EmbeddedId
    private PpHighlightKey ppHighlightKey;

    @ManyToOne
    @Fetch(FetchMode.JOIN)
    @MapsId("HIGHLIGHT_NO")
    @JoinColumn(name = "HIGHLIGHT_NO")
    private PHighlight pHighlight;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("PACKAGE_NO")
    @JoinColumn(name = "PACKAGE_NO")
    private SPackageDetail sPackageDetail;

}