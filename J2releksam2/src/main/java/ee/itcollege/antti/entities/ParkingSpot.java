package ee.itcollege.antti.entities;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.antti.entities.Employee;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooEntity
public class ParkingSpot {

    private String name;

    @ManyToOne
    private Employee employee;
}
