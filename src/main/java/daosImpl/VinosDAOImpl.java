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

        // ??
        long idGenerado = this.simpleInsert.executeAndReturnKey(valores).longValue();
        vino.setId(idGenerado);
        System.out.println("Resgistrado en base de datos: " + vino);
    }

    @Override
    public List<Vino> obtenerVinos() {
        List<Vino> vinos = this.jdbcTemplate.query(ConstantesSQL.SQL_OBTENER_VINOS, new VinosMapper());
        return vinos;
    }

    @Override
    public void borrarVino(long id) {
        this.jdbcTemplate.update(ConstantesSQL.SLQ_BORRAR_VINO, id);
    }

    @Override
    public void actualizarVino(Vino vino) {
        this.jdbcTemplate.update(ConstantesSQL.SQL_GUARDAR_CAMBIOS_VINO, vino.getId(), vino.getNombre(), vino.getPrecio(), vino.getAnio(), vino.getRegion(), vino.getTipo(), vino.getAlcohol());
    }

    @Override
    public Vino obtenerVinoId(long id) {
        return this.jdbcTemplate.queryForObject(ConstantesSQL.SQL_OBTENER_VINO_ID, new Object[]{id}, new VinosMapper());
    }
}
