package com.itrgst.orm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "CONTENT_POINT")
public class ContentPoint {

    @Id
    @Column(name = "NO")
    private Long no;

    @Column(name = "DESCRIPTION")
    private String description;
}