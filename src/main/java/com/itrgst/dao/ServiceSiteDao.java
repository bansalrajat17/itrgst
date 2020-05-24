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
    @Query(value = "SELECT * FROM SERVICE_SITE ss LEFT JOIN SS_DOCUMENT_REQUIRED ssdr ON ss.NO = ssdr.SERVICE_NO LEFT JOIN S_DOCUMENT_REQUIRED sdr ON sdr.NO = ssdr.DOCUMENT_NO WHERE ss.NO =:serviceNo",nativeQuery = true)
    public Optional<ServiceSite> findChildById(@Param("serviceNo") Long serviceNo);
}
