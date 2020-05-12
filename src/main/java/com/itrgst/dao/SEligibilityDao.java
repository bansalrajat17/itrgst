package com.itrgst.dao;

import java.util.List;

import com.itrgst.orm.SEligibility;

import org.springframework.data.repository.CrudRepository;

public interface SEligibilityDao extends CrudRepository<SEligibility, Long> {
    List<SEligibility> findByServiceSiteListNo(Long serviceNo);
}