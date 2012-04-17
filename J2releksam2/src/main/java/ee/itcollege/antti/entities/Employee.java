package ee.itcollege.antti.entities;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.antti.entities.Cubicle;
import javax.persistence.ManyToOne;
import javax.persistence.PreRemove;

import ee.itcollege.antti.entities.ParkingSpot;

@RooJavaBean
@RooToString
@RooEntity
public class Employee {

    private String name;

    private Long salary;

    @ManyToOne
    private Cubicle cubicle;

    @ManyToOne
    private ParkingSpot parkingspot;
    
    @PreRemove
    public void preRemove() {
        throw new RuntimeException("Not allowed");
    }
}
