// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.antti.entities;

import ee.itcollege.antti.entities.Employee;
import java.lang.Integer;
import java.lang.String;
import java.util.Set;

privileged aspect Cubicle_Roo_JavaBean {
    
    public String Cubicle.getName() {
        return this.name;
    }
    
    public void Cubicle.setName(String name) {
        this.name = name;
    }
    
    public Integer Cubicle.getCapacity() {
        return this.capacity;
    }
    
    public void Cubicle.setCapacity(Integer capacity) {
        this.capacity = capacity;
    }
    
    public Set<Employee> Cubicle.getEmployees() {
        return this.employees;
    }
    
    public void Cubicle.setEmployees(Set<Employee> employees) {
        this.employees = employees;
    }
    
}
