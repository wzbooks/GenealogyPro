package com.tsoft.domains.security.entity;

import com.orchestrall.domains.AbstractUpdateTraceDomain;
import com.sun.javafx.binding.BidirectionalBinding;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/25
 * Time: 14:30
 */
public class Parameter extends AbstractUpdateTraceDomain{

    private String type;

    private Long order;

    private String notes;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Long getOrder() {
        return order;
    }

    public void setOrder(Long order) {
        this.order = order;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }
}
