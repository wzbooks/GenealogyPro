package com.tsoft.domains.employee.impl;

import com.tsoft.domains.employee.ArchivesService;
import com.tsoft.domains.employee.entity.Employee;
import com.tsoft.domains.employee.repository.ArchivesRepository;
import com.tsoft.domains.security.ParameterService;
import com.tsoft.domains.security.entity.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/22
 * Time: 0:50
 */
@Service
public class ArchivesServiceImpl implements ArchivesService {

    @Autowired
    private ArchivesRepository archivesRepository;

    @Autowired
    private ParameterService parameterService;

    @Override
    public List<Employee> findAllArchives(Employee employee) {
        return archivesRepository.findAllArchives(employee);
    }

    @Override
    public List<Parameter> queryDocumentType() {
        Parameter condition = new Parameter();
        condition.setType("document_type");
        return parameterService.queryParameter(condition);
    }

    @Override
    public List<Parameter> queryEmploymentRelationship() {
        Parameter condition = new Parameter();
        condition.setType("employment_relationship");
        return parameterService.queryParameter(condition);
    }

    @Override
    public List<Parameter> queryBranchOffice() {
        Parameter condition = new Parameter();
        condition.setType("branch_office");
        return parameterService.queryParameter(condition);
    }

    @Override
    public List<Parameter> queryDepartment() {
        Parameter condition = new Parameter();
        condition.setType("department");
        return parameterService.queryParameter(condition);
    }

    @Override
    public Boolean insertArchives(Employee employee) {
        return archivesRepository.insertArchives(employee);
    }

    @Override
    public Boolean updateArchives(Employee employee) {
        return archivesRepository.updateArchives(employee);
    }

    @Override
    public Boolean deleteArchives(Long id) {
        return archivesRepository.deleteArchives(id);
    }
}
