package com.itrgst.dao;

import com.itrgst.orm.SsGstType;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SsGstTypeDao extends CrudRepository<SsGstType, String> {

}