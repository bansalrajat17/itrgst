package com.itrgst.orm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="CONTENT_SITE")
public class ContentSite extends AuditParameters {

    @Id
    @Column(name="CONTENT_NO")
    private String contentNo;

    @Column(name="CONTENT_HEAD")
    private String contentHead;

    @Column(name="CONTENT_DESC")
    private String contentDesc;
    
}