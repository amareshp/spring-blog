package com.visitamaresh.ws.file;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@PropertySource(value = { "classpath:application.properties" })
public class FileUploadController {
    @Autowired
    private Environment environment;
    
    @RequestMapping(value="/upload", method=RequestMethod.GET)
    public String uploadForm(Model model) {
        return "file/upload";
    }

    @RequestMapping(value="/upload", method=RequestMethod.POST)
    public @ResponseBody String handleFileUpload(@RequestParam("name") String name,
            @RequestParam("file") MultipartFile file){
        String uploadFilePath = environment.getProperty("upload.path");
        
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                String filePath = uploadFilePath + name;
                File yourFile = new File(filePath);
                if(!yourFile.exists()) {
                    yourFile.createNewFile();
                } 
                BufferedOutputStream stream =
                        new BufferedOutputStream(new FileOutputStream(yourFile, false));
                stream.write(bytes);
                stream.close();
                return "You successfully uploaded " + name + "!";
            } catch (Exception e) {
                return "You failed to upload " + name + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload " + name + " because the file was empty.";
        }
    }

}