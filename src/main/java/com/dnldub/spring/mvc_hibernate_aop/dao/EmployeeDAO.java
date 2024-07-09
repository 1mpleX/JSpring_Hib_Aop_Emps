package com.dnldub.spring.mvc_hibernate_aop.dao;

import com.dnldub.spring.mvc_hibernate_aop.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();
    public void saveEmployee(Employee employee);
    public void deleteEmployee(Employee employee, int id);
}
