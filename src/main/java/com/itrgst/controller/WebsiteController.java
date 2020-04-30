package com.itrgst.controller;

import com.itrgst.orm.ContentSite;
import com.itrgst.orm.ServiceSite;
import com.itrgst.service.WebsiteService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
public class WebsiteController {

	@Autowired
	private WebsiteService websiteService;

	@GetMapping("get/ServiceSite/{serviceId}")
	public ServiceSite getServiceSite(@PathVariable String serviceId) {
		return websiteService.getServiceSite(serviceId);
	}

	@GetMapping("get/ContentSite/{contentNo}")
	public ContentSite getContentSite(@PathVariable String contentNo){
		return websiteService.getContentSite(contentNo);
	}

}
