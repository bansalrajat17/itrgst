package com.itrgst.orm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="TESTIMONIAL_SITE")
public class TestimonialSite extends Site {

    @Column(name="GIVEN_BY")
    private String givenBy;
    
}