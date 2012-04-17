package ee.itcollege.antti.entities;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Set;
import ee.itcollege.antti.entities.Employee;
import java.util.HashSet;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;

@RooJavaBean
@RooToString
@RooEntity
public class Cubicle {

    private String name;

    private Integer capacity;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cubicle")
    private Set<Employee> employees = new HashSet<Employee>();
}
