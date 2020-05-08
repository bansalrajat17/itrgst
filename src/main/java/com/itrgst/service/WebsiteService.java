package com.itrgst.service;

import java.util.List;

import com.itrgst.dao.ContentSiteDao;
import com.itrgst.dao.ServiceSiteDao;
import com.itrgst.dao.SEligibilityDao;
import com.itrgst.dao.SsGstTypeDao;
import com.itrgst.orm.ContentSite;
import com.itrgst.orm.ServiceSite;
import com.itrgst.orm.SEligibility;
import com.itrgst.orm.SsGstType;

import org.springframework.beans.factory.annotation.Autowired;

@org.springframework.stereotype.Service
public class WebsiteService {

	@Autowired
	private ServiceSiteDao serviceSiteDao;

	@Autowired
	private ContentSiteDao contentSiteDao;

	@Autowired
	private SsGstTypeDao ssGstTypeDao;

	@Autowired
	private SEligibilityDao sEligibilityDao;

	public List<SsGstType> getSsGstTypeList() {
		return (List<SsGstType>) ssGstTypeDao.findAll();
	}

	public ServiceSite getServiceSite(String serviceId) {
		return serviceSiteDao.findById(serviceId).get();
	}

	public ContentSite getContentSite(String contentNo) {
		return contentSiteDao.findById(contentNo).get();
	}

	public List<SEligibility> getSEligibilityListByServiceId(String serviceId) {
		return sEligibilityDao.findByServiceSiteListServiceId(serviceId);
	}

}
