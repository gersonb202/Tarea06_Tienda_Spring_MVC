package daos;

import modelo.Vino;

import java.util.List;

public interface VinosDAO {

    void registrarVino(Vino vino);
    List<Vino> obtenerVinos();
    void borrarVino(long id);
    void actualizarVino(Vino vino);
    Vino obtenerVinoId(long id);

}
