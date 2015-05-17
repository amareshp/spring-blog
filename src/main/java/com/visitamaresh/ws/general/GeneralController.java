package com.visitamaresh.ws.general;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/general")
public class GeneralController {
    private static Logger logger = Logger.getLogger(new Exception().getStackTrace()[0].getClassName());

    @RequestMapping(value="/listFiles", method=RequestMethod.GET)
    public String listAll(Model model) {
        return "general/files";
    }
    
}