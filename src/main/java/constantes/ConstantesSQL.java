package constantes;

public class ConstantesSQL {

    public static final String SQL_OBTENER_VINOS = "SELECT * FROM vinos ORDER BY id DESC";
    public static final String SLQ_BORRAR_VINO = "DELETE FROM vinos WHERE id = ?";
    public static final String SQL_OBTENER_VINO_ID = "SELECT * FROM vinos WHERE id = ?";
    public static final String SQL_GUARDAR_CAMBIOS_VINO = "UPDATE vinos SET nombre = ?, precio = ?, anio = ?, region = ?, tipo = ?, alcohol = ? WHERE id = ?";

}
