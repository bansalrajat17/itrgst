package com.itrgst.service;

import com.itrgst.dao.ContentSiteDao;
import com.itrgst.dao.ServiceSiteDao;
import com.itrgst.orm.ContentSite;
import com.itrgst.orm.ServiceSite;

import org.springframework.beans.factory.annotation.Autowired;

@org.springframework.stereotype.Service
public class WebsiteService {

	@Autowired
	private ServiceSiteDao serviceSiteDao;

	@Autowired
	private ContentSiteDao contentSiteDao;

	public ServiceSite getServiceSite(String serviceId) {
		return serviceSiteDao.findById(serviceId).get();
	}

	public ContentSite getContentSite(String contentNo){
		return contentSiteDao.findById(contentNo).get();
	}

}
