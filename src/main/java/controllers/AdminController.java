package controllers;

import org.springframework.web.bind.annotation.RequestMapping;

public class AdminController {

    @RequestMapping("admin")
    public String admin(){
        return "admin/inicio";
    }

}
