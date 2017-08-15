package com.tsoft.domains.employee;

import com.tsoft.domains.employee.entity.Employee;
import com.tsoft.domains.security.entity.Parameter;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/22
 * Time: 0:47
 */
public interface ArchivesService {

    /*查询所有档案*/
    List<Employee> findAllArchives(Employee employee);

    /*查询证件类型*/
    List<Parameter> queryDocumentType();

    /*查询用工关系*/
    List<Parameter> queryEmploymentRelationship();

    /*查询分公司*/
    List<Parameter> queryBranchOffice();

    /*查询所有部门*/
    List<Parameter> queryDepartment();

    /*新增档案*/
    Boolean insertArchives(Employee employee);

    /*修改档案*/
    Boolean updateArchives(Employee employee);

    /*删除档案*/
    Boolean deleteArchives(Long id);
}
