package com.itrgst.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.itrgst.dao.ContentSiteDao;
import com.itrgst.dao.ServiceSiteDao;
import com.itrgst.dao.SEligibilityDao;
import com.itrgst.dao.SsGstTypeDao;
import com.itrgst.dao.STestimonialDao;
import com.itrgst.orm.ContentSite;
import com.itrgst.orm.ServiceSite;
import com.itrgst.orm.SsDocumentRequired;
import com.itrgst.orm.SEligibility;
import com.itrgst.orm.SsGstType;
import com.itrgst.orm.STestimonial;

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

	@Autowired
	private STestimonialDao sTestimonialDao;

	public List<SsGstType> getSsGstTypeList() {
		return (List<SsGstType>) ssGstTypeDao.findAll();
	}

	public ServiceSite getServiceSiteByNo(Long no) {
		return serviceSiteDao.findById(no).get();
	}

	public ContentSite getContentSiteByNo(Long no) {
		return contentSiteDao.findById(no).get();
	}

	public Iterable<ContentSite> getContentSiteListByNos(Iterable<Long> nos) {
		return contentSiteDao.findAllById(nos);
	}

	public List<SEligibility> getSEligibilityListByServiceSiteListNo(Long serviceNo) {
		return sEligibilityDao.findByServiceSiteListNo(serviceNo);
	}

	public List<STestimonial> getAllSTestimonialList() {
		return (List<STestimonial>) sTestimonialDao.findAll();
	}

}
