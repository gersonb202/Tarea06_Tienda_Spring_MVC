package controllers.admin;

import daosImpl.VinosDAOImpl;
import modelo.Vino;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class VinosControllerAdmin {
    @Autowired
    @Qualifier("vinosDAO")
    private VinosDAOImpl vinosDAO;

    @RequestMapping("listarVinos")
    public String listarVinos(Model modelo){
        List<Vino> vinos = vinosDAO.obtenerVino();
        modelo.addAttribute("vinos", vinos);
        return "admin/vinos";
    }

    @RequestMapping("crearVino")
    public String crearVino(Model modelo){
        Vino vino = new Vino();
        vino.setPrecio(1.0);
        modelo.addAttribute("vino", vino);
        return "admin/nuevo_vino";
    }

    @RequestMapping("guardarNuevoVino")
    public String guardarNuevoVino(Vino vino){
        vinosDAO.registrarVino(vino);
        return "admin/nuevo_vino_ok";
    }

}
