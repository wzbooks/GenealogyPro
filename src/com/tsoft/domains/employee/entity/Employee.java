package com.tsoft.domains.employee.entity;

import com.orchestrall.domains.AbstractUpdateTraceDomain;

import java.util.Date;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/21
 * Time: 15:55
 */
public class Employee extends AbstractUpdateTraceDomain {

    private Long employeeNumber;  //员工号

    private String englishName;  //英文名

    private Long branchOfficeId;  //分公司id

    private String branchOffice;  //分公司名称

    private Long departmentId;  //部门id

    private String department;  //部门名称

    private Integer isLeave;  //是否离职  0否 1是

    private Long documentTypeId;  //证件类型id

    private String documentType;  //证件类型名称

    private Long documentNumber;  //证件号

    private Long cellPhone;  //私人号码

    private Long workPhone;  //工作号码
    
    private Date inductionTime;  //入职时间

    private Long employmentRelationshipId;  //用工关系id

    private String employmentRelationship;  //用工关系名称

    private String mailbox;  //邮箱

    public Long getEmployeeNumber() {
        return employeeNumber;
    }

    public void setEmployeeNumber(Long employeeNumber) {
        this.employeeNumber = employeeNumber;
    }

    public String getEnglishName() {
        return englishName;
    }

    public void setEnglishName(String englishName) {
        this.englishName = englishName;
    }

    public Long getBranchOfficeId() {
        return branchOfficeId;
    }

    public void setBranchOfficeId(Long branchOfficeId) {
        this.branchOfficeId = branchOfficeId;
    }

    public String getBranchOffice() {
        return branchOffice;
    }

    public void setBranchOffice(String branchOffice) {
        this.branchOffice = branchOffice;
    }

    public Long getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Integer getIsLeave() {
        return isLeave;
    }

    public void setIsLeave(Integer isLeave) {
        this.isLeave = isLeave;
    }

    public Long getDocumentTypeId() {
        return documentTypeId;
    }

    public void setDocumentTypeId(Long documentTypeId) {
        this.documentTypeId = documentTypeId;
    }

    public String getDocumentType() {
        return documentType;
    }

    public void setDocumentType(String documentType) {
        this.documentType = documentType;
    }

    public Long getDocumentNumber() {
        return documentNumber;
    }

    public void setDocumentNumber(Long documentNumber) {
        this.documentNumber = documentNumber;
    }

    public Long getCellPhone() {
        return cellPhone;
    }

    public void setCellPhone(Long cellPhone) {
        this.cellPhone = cellPhone;
    }

    public Long getWorkPhone() {
        return workPhone;
    }

    public void setWorkPhone(Long workPhone) {
        this.workPhone = workPhone;
    }

    public Date getInductionTime() {
        return inductionTime;
    }

    public void setInductionTime(Date inductionTime) {
        this.inductionTime = inductionTime;
    }

    public Long getEmploymentRelationshipId() {
        return employmentRelationshipId;
    }

    public void setEmploymentRelationshipId(Long employmentRelationshipId) {
        this.employmentRelationshipId = employmentRelationshipId;
    }

    public String getEmploymentRelationship() {
        return employmentRelationship;
    }

    public void setEmploymentRelationship(String employmentRelationship) {
        this.employmentRelationship = employmentRelationship;
    }

    public String getMailbox() {
        return mailbox;
    }

    public void setMailbox(String mailbox) {
        this.mailbox = mailbox;
    }
}
