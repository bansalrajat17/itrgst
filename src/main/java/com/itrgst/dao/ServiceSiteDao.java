package com.itrgst.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.itrgst.orm.ServiceSite;

@Repository
public interface ServiceSiteDao extends CrudRepository<ServiceSite, String> {

}
