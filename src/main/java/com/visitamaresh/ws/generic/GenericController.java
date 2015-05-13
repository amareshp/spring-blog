package com.visitamaresh.ws.generic;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GenericController {
 
    @Autowired
    GenericService<GenericPojo> genericService;
    
    @RequestMapping(value = "/generic", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("generic/form", "generic", new GenericPojo());
    }
 
    @RequestMapping(value = "/generic", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("generic")GenericPojo generic, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "generic/error";
        }
        genericService.save(generic);
        
        model.addAttribute("firstName", generic.getFirstName() );
        model.addAttribute("lastName", generic.getLastName() );
        model.addAttribute("city", generic.getCity() );
        return "generic/generic";
    }
}