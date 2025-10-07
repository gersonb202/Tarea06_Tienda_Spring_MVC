package daosImpl;

import constantes.ConstantesSQL;
import daos.VinosDAO;
import mappers.VinosMapper;
import modelo.Vino;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;

import javax.sql.DataSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

public class VinosDAOImpl implements VinosDAO {

    private DataSource dataSource;
    private SimpleJdbcInsert simpleInsert;
    private JdbcTemplate jdbcTemplate;

    public void setDataSource(DataSource dataSource){
        this.dataSource = dataSource;
        this.simpleInsert = new SimpleJdbcInsert(dataSource);
        this.simpleInsert.setTableName("vinos");
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void registrarVino(Vino vino) {
        HashMap<String, Object> valores = new HashMap<>();
        valores.put("nombre", vino.getNombre());
        valores.put("precio", vino.getPrecio());
        valores.put("anio", vino.getAnio());
        valores.put("region", vino.getRegion());
        valores.put("tipo", vino.getTipo());
        valores.put("alcohol", vino.getAlcohol());
        this.simpleInsert.execute(valores);
    }

    @Override
    public List<Vino> obtenerVinos() {
        List<Vino> vinos = this.jdbcTemplate.query(ConstantesSQL.SQL_OBTENER_VINOS, new VinosMapper());
        return vinos;
    }

    @Override
    public void borrarVino(long id) {

    }

    @Override
    public void actualizarVino(Vino vino) {

    }
}
