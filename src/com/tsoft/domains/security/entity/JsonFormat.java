package com.tsoft.domains.security.entity;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/23
 * Time: 16:51
 */
public class JsonFormat {

    private boolean rel;

    private String msg;

    private List list;

    private Long count;

    public boolean isRel() {
        return rel;
    }

    public void setRel(boolean rel) {
        this.rel = rel;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }
}
