package mappers;

import modelo.Vino;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class VinosMapper implements RowMapper<Vino> {

    @Override
    public Vino mapRow(ResultSet rs, int rowNum) throws SQLException {
        Vino vino = new Vino();
        vino.setId(rs.getLong("id"));
        vino.setNombre(rs.getString("nombre"));
        vino.setPrecio(rs.getDouble("precio"));
        vino.setAnio(rs.getInt("anio"));
        vino.setRegion(rs.getString("region"));
        vino.setTipo(rs.getString("tipo"));
        vino.setAlcohol(rs.getDouble("alcohol"));
        return vino;
    }
}
