package com.itrgst.controller;

import java.util.List;
import java.util.Set;

import com.itrgst.orm.ContentSite;
import com.itrgst.orm.SEligibility;
import com.itrgst.orm.ServiceSite;
import com.itrgst.orm.SsGstType;
import com.itrgst.orm.TestimonialSite;
import com.itrgst.service.WebsiteService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
public class WebsiteController {

	@Autowired
	private WebsiteService websiteService;

	@GetMapping("get/ServiceSite/no/{no}")
	public ServiceSite getServiceSiteByNo(@PathVariable Long no) {
		return websiteService.getServiceSiteByNo(no);
	}

	@GetMapping("get/SsGstTypeList")
	public List<SsGstType> getSsGstTypeList() {
		return websiteService.getSsGstTypeList();
	}

	@GetMapping("get/SEligibilityList/serviceNo/{serviceNo}")
	public List<SEligibility> getSEligibilityListByServiceNo(@PathVariable Long serviceNo) {
		return websiteService.getSEligibilityListByServiceSiteListNo(serviceNo);
	}

	@GetMapping("get/ContentSite/no/{no}")
	public ContentSite getContentSiteByNo(@PathVariable Long no) {
		return websiteService.getContentSiteByNo(no);
	}

	@GetMapping("get/TestimonialSiteList")
	public List<TestimonialSite> getAllTestimonialSiteList() {
		return websiteService.getAllTestimonialSiteList();
	}

	@PostMapping("get/ContentSiteList/nos")
	public List<ContentSite> getContentSiteListByNos(@RequestBody List<Long> nos) {
		return (List<ContentSite>) websiteService.getContentSiteListByNos(nos);	
	}

}
