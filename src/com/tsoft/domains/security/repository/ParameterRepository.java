package com.tsoft.domains.security.repository;

import com.orchestrall.domains.AbstractBaseRepository;
import com.orchestrall.domains.BaseRepository;
import com.tsoft.domains.security.entity.Parameter;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/25
 * Time: 14:43
 */
public interface ParameterRepository extends BaseRepository<Parameter> {

    List<Parameter> queryParameter(Parameter condition);
}
