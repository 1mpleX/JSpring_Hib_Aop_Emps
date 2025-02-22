package com.dnldub.spring.mvc_hibernate_aop.controller;

import com.dnldub.spring.mvc_hibernate_aop.entity.Employee;
import com.dnldub.spring.mvc_hibernate_aop.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MyController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/")
    public String showAllEmployees(Model model){

        List<Employee> allEmployees = employeeService.getAllEmployees();
        model.addAttribute("allEmps", allEmployees);

        return "all-employees";
    }

    @RequestMapping("/addNewEmployee")
    public String addNewEmployee(Model model){
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "employee-info";
    }

    @RequestMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee") Employee employee ){
        employeeService.saveEmployee(employee);
        return "redirect:/";
    }

    @RequestMapping("/deleteEmployee")
    public String deleteEmployee(Model model){
        model.addAttribute("delempid", new Employee());
        return "delete-employee";
    }

    @RequestMapping("/deleting")
    public String deleting(@ModelAttribute("delempid") Employee employee, int id){
        employeeService.deleteEmployee(employee, id);
        return "redirect:/";
    }
}
