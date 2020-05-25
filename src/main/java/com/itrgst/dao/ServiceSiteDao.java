package com.itrgst.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

import com.itrgst.orm.ServiceSite;

@Repository
public interface ServiceSiteDao extends CrudRepository<ServiceSite, Long> {
    // JPA NAMED QUERIES
   // public Optional<ServiceSite> findChildById(@Param("serviceNo") Long serviceNo);
}
