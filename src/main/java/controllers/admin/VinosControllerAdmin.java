package controllers.admin;

import daosImpl.VinosDAOImpl;
import modelo.Vino;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import utilidades.GestorArchivos;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class VinosControllerAdmin {
    @Autowired
    // @Qualifier("vinosDAO")
    private VinosDAOImpl vinosDAO;

    @RequestMapping("listarVinos")
    public String listarVinos(Model modelo){
        List<Vino> vinos = vinosDAO.obtenerVinos();
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
    public String guardarNuevoVino(Vino vino, HttpServletRequest request){
        vinosDAO.registrarVino(vino);
        String rutaReal = request.getServletContext().getRealPath("");
        GestorArchivos.guardarImagenVino(vino, rutaReal);
        return "admin/nuevo_vino_ok";
    }

    @RequestMapping("borrarVino")
    public String borrarVino(String id, Model modelo){
        vinosDAO.borrarVino(Long.parseLong(id));
        return listarVinos(modelo);
    }

    @RequestMapping("modificarVino")
    public String modificarVino(String id, Model modelo){
        Vino vino = vinosDAO.obtenerVinoId(Long.parseLong(id));
        modelo.addAttribute("vinoEditar", vino);
        return "admin/editar_vino";
    }


    @RequestMapping("guardarCambiosVino")
    public String guardarCambiosVino(Vino vino, Model modelo){
        vinosDAO.actualizarVino(vino);
        return listarVinos(modelo);
    }


}
