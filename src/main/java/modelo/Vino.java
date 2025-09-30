package modelo;

public class Vino {

    private long id;
    private String nombre;
    private Double precio;
    private int anio;
    private String region;
    private String tipo;
    private Double alcohol;

    public Vino() {
    }

    public Vino(long id, String nombre, Double precio, int anio, String region, String tipo, Double alcohol) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
        this.anio = anio;
        this.region = region;
        this.tipo = tipo;
        this.alcohol = alcohol;
    }

    public Vino(String nombre, Double precio, int anio, String region, String tipo, Double alcohol) {
        this.nombre = nombre;
        this.precio = precio;
        this.anio = anio;
        this.region = region;
        this.tipo = tipo;
        this.alcohol = alcohol;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Double getAlcohol() {
        return alcohol;
    }

    public void setAlcohol(Double alcohol) {
        this.alcohol = alcohol;
    }

    @Override
    public String toString() {
        return "Vino{" +
                "id=" + id +
                ", nombre='" + nombre + '\'' +
                ", precio=" + precio +
                ", anio=" + anio +
                ", region='" + region + '\'' +
                ", tipo='" + tipo + '\'' +
                ", alcohol=" + alcohol +
                '}';
    }
}
