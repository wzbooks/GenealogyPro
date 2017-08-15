package com.tsoft.domains.Test.entity;

import com.orchestrall.domains.AbstractUpdateTraceDomain;

/**
 * Created by Administrator on 2017/7/19.
 */
public class Test extends AbstractUpdateTraceDomain {

    private int age;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
