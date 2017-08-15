package com.tsoft.domains.Test.impl;

import com.tsoft.domains.Test.TestService;
import com.tsoft.domains.Test.entity.Test;
import com.tsoft.domains.Test.repository.TestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/7/19.
 */
@Service
public class TestServiceImpl implements TestService {

    @Autowired
    private TestRepository testRepository;

    public Test query(){
        return testRepository.get("selectTest",2);
    }
}
