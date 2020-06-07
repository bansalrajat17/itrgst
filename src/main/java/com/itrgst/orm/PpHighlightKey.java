package com.itrgst.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Data;

@Data
@Embeddable
public class PpHighlightKey implements Serializable{
    
    @Column(name = "PACKAGE_NO")
    private Long packageNo;

    @Column(name = "HIGHLIGHT_NO")
    private Long highlightNo;
}