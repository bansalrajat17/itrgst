package com.itrgst.orm;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.itrgst.orm.Site;

import lombok.Data;

@Data
@Entity
@Table(name="CONTENT_SITE")
public class ContentSite extends Site {

	@OneToMany(mappedBy = "contentSite")
	private List<CsCp> csCpList = new ArrayList<>();
     
}