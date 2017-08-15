package com.tsoft.domains.employee.repository.mybatis;

import com.orchestrall.domains.AbstractBaseRepository;
import com.tsoft.domains.employee.entity.Employee;
import com.tsoft.domains.employee.repository.ArchivesRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/22
 * Time: 0:52
 */
@Repository
public class ArchivesRepositoryMybatis extends AbstractBaseRepository<Employee> implements ArchivesRepository{

    @Override
    public List<Employee> findAllArchives(Employee employee) {
        return findByCondition("findarchives",employee);
    }

    @Override
    public Boolean insertArchives(Employee employee) {
        return insert("insertarchives",employee) > 0;
    }

    @Override
    public Boolean updateArchives(Employee employee) {
        return insert("updatearchives",employee) > 0;
    }

    @Override
    public Boolean deleteArchives(Long id) {
        return delete("deletearchives", id) > 0;
    }
}
