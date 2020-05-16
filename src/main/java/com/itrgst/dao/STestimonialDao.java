package com.itrgst.dao;

import com.itrgst.orm.STestimonial;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface STestimonialDao extends CrudRepository<STestimonial,Long>{

}