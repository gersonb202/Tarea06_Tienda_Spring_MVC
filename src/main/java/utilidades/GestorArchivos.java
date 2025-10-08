package utilidades;

import modelo.Vino;

import java.io.File;
import java.io.IOException;

public class GestorArchivos {

    public static void guardarImagenVino(Vino vino, String rutaReal){

        System.out.println("Guardar la imagen del vino: " + vino.getNombre());
        System.out.println("En una carpeta de la ruta: " + rutaReal);
        String rutaSubida = rutaReal + "subidas";
        File fileRutaSubida = new File(rutaSubida);
        if(!fileRutaSubida.exists()){
            fileRutaSubida.mkdirs();
        }
        if(vino.getImagen().getSize() > 0){
            String nombreArchivo = vino.getId() + ".jpg";
            try {
                vino.getImagen().transferTo(new File(rutaSubida, nombreArchivo));
                System.out.println("Archivo movido a: " + rutaSubida);
            } catch (IOException e) {
                System.out.println("No se pudo mover el archivo a la ruta subidas");
                throw new RuntimeException(e);
            }
        }else{
            System.out.println("Se subió un producto sin imagen, no hay problema");
        }

    }

}
