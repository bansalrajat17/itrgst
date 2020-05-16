package com.itrgst.orm;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.itrgst.orm.Site;

import lombok.Data;

@Data
@Entity
@Table(name="CONTENT_SITE")
public class ContentSite extends Site {
     
}