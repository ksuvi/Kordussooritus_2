package ee.itcollege.antti.web;

import ee.itcollege.antti.entities.Cubicle;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "cubicles", formBackingObject = Cubicle.class)
@RequestMapping("/cubicles")
@Controller
public class CubicleController {
}
