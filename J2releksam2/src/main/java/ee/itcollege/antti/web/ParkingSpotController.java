package ee.itcollege.antti.web;

import ee.itcollege.antti.entities.ParkingSpot;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "parkingspots", formBackingObject = ParkingSpot.class)
@RequestMapping("/parkingspots")
@Controller
public class ParkingSpotController {
}
