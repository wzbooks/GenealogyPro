package com.tsoft.domains.security;

import com.tsoft.domains.security.entity.Parameter;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/25
 * Time: 14:29
 */
public interface ParameterService {

    /*查询参数*/
    List<Parameter> queryParameter(Parameter condition);
}
