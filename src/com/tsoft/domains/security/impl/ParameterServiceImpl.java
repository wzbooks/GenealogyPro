package com.tsoft.domains.security.impl;

import com.tsoft.domains.security.ParameterService;
import com.tsoft.domains.security.entity.Parameter;
import com.tsoft.domains.security.repository.ParameterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/25
 * Time: 14:41
 */
@Service
public class ParameterServiceImpl implements ParameterService {

    @Autowired
    private ParameterRepository parameterRepository;

    @Override
    public List<Parameter> queryParameter(Parameter condition) {
        return parameterRepository.queryParameter(condition);
    }
}
