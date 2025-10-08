package controllers.admin;

import modelo.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import servicios.ServiciosUsuarios;

@Controller
public class UsuariosControllerAdmin {

    @Autowired
    private ServiciosUsuarios serviciosUsuarios;

    @RequestMapping("crearUsuario")
    public String crearUsuario(Model modelo){
        modelo.addAttribute("nuevoUsuario", new Usuario());
        return "admin/nuevo_usuario";
    }

    @RequestMapping("guardarNuevoUsuario")
    public String guardarNuevoUsuario(Usuario nuevoUsuario){
        serviciosUsuarios.registrarUsuario(nuevoUsuario);
        return "admin/nuevo_usuario_ok";
    }

    @RequestMapping("listarUsuarios")
    public String listarUsuarios(Model modelo){
        modelo.addAttribute("usuarios", serviciosUsuarios.obtenerUsuarios());
        return "admin/usuarios";
    }

    @RequestMapping("borrarUsuario")
    public String borrarUsuario(String id, Model modelo){
        serviciosUsuarios.borrarUsuario(Integer.parseInt(id));
        return listarUsuarios(modelo);
    }

    @RequestMapping("editarUsuario")
    public String editarUsuario(String id, Model modelo){
        modelo.addAttribute("usuarioEditar", serviciosUsuarios.obtenerUsuario(Integer.parseInt(id)));
        return "admin/editar_usuario";
    }

    @RequestMapping("guardarCambiosUsuario")
    public String guardarCambiosUsuario(Usuario usuarioEditar, Model modelo){
        serviciosUsuarios.actualizarUsuario(usuarioEditar);
        return listarUsuarios(modelo);
    }

}
