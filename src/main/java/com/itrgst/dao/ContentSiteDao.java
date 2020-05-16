package com.itrgst.dao;

import com.itrgst.orm.ContentSite;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentSiteDao extends CrudRepository<ContentSite,Long> {
    

}