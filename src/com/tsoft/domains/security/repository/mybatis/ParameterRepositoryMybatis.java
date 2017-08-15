package com.tsoft.domains.security.repository.mybatis;

import com.orchestrall.domains.AbstractBaseRepository;
import com.tsoft.domains.security.entity.Parameter;
import com.tsoft.domains.security.repository.ParameterRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/25
 * Time: 14:44
 */
@Repository
public class ParameterRepositoryMybatis extends AbstractBaseRepository<Parameter> implements ParameterRepository {

    @Override
    public List<Parameter> queryParameter(Parameter condition) {
        return findByCondition("queryParameter", condition);
    }
}
