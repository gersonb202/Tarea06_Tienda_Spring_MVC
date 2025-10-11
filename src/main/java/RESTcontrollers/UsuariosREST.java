package RESTcontrollers;

import modelo.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import servicios.ServiciosUsuarios;

@Controller
public class UsuariosREST {

    @Autowired
    private ServiciosUsuarios serviciosUsuarios;

    @RequestMapping("usuariosREST/login")
    public ResponseEntity<String> login(String email, String pass){
        Usuario usuario = serviciosUsuarios.obtenerUsuarioPorEmailyPass(email, pass);
        String respuesta = "";
        if(usuario != null){
            respuesta = "ok," + usuario.getNombre();
        }else{
            respuesta = "Error, email o pass incorrectos";
        }
        return new ResponseEntity<String>(respuesta, HttpStatus.OK);
    }

    @RequestMapping("usuariosREST/registrar")
    public ResponseEntity<String> registrar(String nombre, String apellido, int edad, String pais, String pass, String email){
        System.out.println("Voy a registrar: " + nombre + ", " + apellido + ", " + edad + "...");
        serviciosUsuarios.registrarUsuario(new Usuario(nombre, apellido, edad, pais, pass, email));
        return new ResponseEntity<String>("Registro ok, ya puedes identificarte", HttpStatus.OK);
    }

}
