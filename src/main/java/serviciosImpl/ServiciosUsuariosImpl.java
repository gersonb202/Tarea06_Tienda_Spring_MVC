package serviciosImpl;

import modelo.Usuario;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import servicios.ServiciosUsuarios;

import java.util.Collections;
import java.util.List;

@Service
@Transactional
public class ServiciosUsuariosImpl implements ServiciosUsuarios {

    // Entender bien el @Autowired
     @Autowired
     private SessionFactory sessionFactory;

    @Override
    public void registrarUsuario(Usuario usuario) {
        this.sessionFactory.getCurrentSession().save(usuario);
    }

    @Override
    public List<Usuario> obtenerUsuarios() {
        // Entender criteria
        Criteria c = this.sessionFactory.getCurrentSession().createCriteria(Usuario.class);
        List<Usuario> usuarios = c.list();
        return Collections.emptyList();
    }

    @Override
    public void borrarUsuario(int id) {
        Usuario usuario = this.obtenerUsuario(id);
        this.sessionFactory.getCurrentSession().delete(usuario);
    }

    @Override
    public Usuario obtenerUsuario(int id) {
        return (Usuario) this.sessionFactory.getCurrentSession().get(Usuario.class, id);
    }

    @Override
    public void actualizarUsuario(Usuario usuarioEditar) {
        this.sessionFactory.getCurrentSession().merge(usuarioEditar);
    }
}
