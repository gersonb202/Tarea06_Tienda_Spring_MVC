package controllers;

import org.springframework.web.bind.annotation.RequestMapping;

public class InicioController {

    @RequestMapping("/inicio")
    public String incio(){return "tienda";}

}
