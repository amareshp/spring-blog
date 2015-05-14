package com.visitamaresh.ws.gallery;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/gallery")
public class GalleryController {
    
    @RequestMapping(value = "/album1", method = RequestMethod.GET)
    public String showAlbum() {
        return "gallery/album1";
    }

}
