package com.tsoft.domains.Test.repository.mybatis;

import com.orchestrall.domains.AbstractBaseRepository;
import com.tsoft.domains.Test.entity.Test;
import com.tsoft.domains.Test.repository.TestRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/7/20.
 */
@Repository
public class TestRepositoryMybatis extends AbstractBaseRepository<Test> implements TestRepository{
}
