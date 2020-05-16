package com.itrgst.dao;

import java.util.Set;
import java.util.List;

import com.itrgst.orm.SEligibility;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SEligibilityDao extends CrudRepository<SEligibility, Long> {

    @Query(value = "SELECT t FROM S_ELIGIBILITY t WHERE t.SERVICE_NO = :serviceNo", nativeQuery = true)
    List<SEligibility> findByServiceSiteListNo(Long serviceNo);

}