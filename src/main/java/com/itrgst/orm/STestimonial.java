package com.itrgst.orm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="S_TESTIMONIAL")
public class STestimonial extends AuditParameters {

    @Id
    @Column(name="NO")
    private Long no;

    @Column(name="GIVEN_BY")
    private String givenBy;

    @Column(name="DESIGNATION")
    private String designation; 

    @Column(name="DESCRIPTION")
    private String description;

    @Column(name="LOGO")
    private String logo;
    
}