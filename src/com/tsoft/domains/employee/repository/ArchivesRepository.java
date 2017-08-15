package com.tsoft.domains.employee.repository;

import com.orchestrall.domains.BaseRepository;
import com.sun.org.apache.xpath.internal.operations.Bool;
import com.tsoft.domains.employee.entity.Employee;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/22
 * Time: 0:51
 */
public interface ArchivesRepository extends BaseRepository<Employee> {

    List<Employee> findAllArchives(Employee employee);

    Boolean insertArchives(Employee employee);

    Boolean updateArchives(Employee employee);

    Boolean deleteArchives(Long id);
}
