package com.itrgst.dao;

import com.itrgst.orm.TestimonialSite;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TestimonialSiteDao extends CrudRepository<TestimonialSite,Long>{

}