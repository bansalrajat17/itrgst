package com.itrgst.dao;

import com.itrgst.orm.RequestQueue;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RequestQueueDao extends CrudRepository<RequestQueue, String> {
    RequestQueue findByEmail(String email);
    RequestQueue findByPhone(String phone);
}