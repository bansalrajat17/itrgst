package com.itrgst.dao;

import com.itrgst.orm.UserMaster;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMasterDao extends CrudRepository<UserMaster, String> {

}