package com.tsoft.web.employee;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.internal.Streams;
import com.tsoft.domains.employee.ArchivesService;
import com.tsoft.domains.employee.entity.Employee;
import com.tsoft.domains.security.ParameterService;
import com.tsoft.domains.security.entity.JsonFormat;
import com.tsoft.domains.security.entity.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/21
 * Time: 15:51
 */
@Controller
public class EmployeeManagerController {

    @Autowired
    private ArchivesService archivesService;

    @RequestMapping(value = "/archives", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView index(){
        HashMap<String, Object> model=new HashMap<String, Object>();
        Employee employee = new Employee();
        model.put("archives",archivesService.findAllArchives(employee));
        model.put("documentType",archivesService.queryDocumentType());
        model.put("employmentRelationship",archivesService.queryEmploymentRelationship());
        model.put("branchOffice",archivesService.queryBranchOffice());
        model.put("department",archivesService.queryDepartment());
        return new ModelAndView("employee/archives", model);
    }

    @RequestMapping(value = "/get", method = RequestMethod.POST)
    @ResponseBody
    public List<Employee> get(Employee employee){

        return archivesService.findAllArchives(employee);
    }

    @RequestMapping(value = "/insertorupdatearchives", method = RequestMethod.POST)
    @ResponseBody
    public Boolean insertArchives(@RequestParam("archives") String archives){
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();  ;
        String archivesVO = archives.substring(9);
        Employee employee = gson.fromJson(archivesVO, Employee.class);
        if (employee.getId()==null){
            return archivesService.insertArchives(employee);  //新增档案
        }
        return archivesService.updateArchives(employee);
    }

    @RequestMapping(value = "/deletearchives", method = RequestMethod.POST)
    @ResponseBody
    public Boolean deleteArchives(@RequestParam("id") Long id){

        return archivesService.deleteArchives(id);
    }
}
