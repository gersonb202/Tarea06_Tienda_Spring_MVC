package servicios;

import modelo.Usuario;

import java.util.List;

public interface ServiciosUsuarios {

    void registrarUsuario(Usuario usuario);
    List<Usuario> obtenerUsuarios();
    void borrarUsuario(int id);
    Usuario obtenerUsuario(int id);
    void actualizarUsuario(Usuario usuarioEditar);

    Usuario obtenerUsuarioPorEmailyPass(String email, String pass);
}
