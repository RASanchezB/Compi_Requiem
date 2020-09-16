
package compila_flex;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class ejecuta {
    Scanner leer = new Scanner(System.in);
    
    public static void main (String args[]){
        ejecuta ejecutar=new ejecuta();
        ejecutar.archivo();
        ejecutar.ejecutar_analizador();
    }

    public void archivo() {
        String ruta = "archivo_texto.txt";
        File archivo = new File(ruta);
        BufferedWriter bw = null;
        
        if (archivo.exists()) {

                System.out.print("Reading");
            
        } else {
            System.out.print("nel");
        }
    }
    
     public void ejecutar_analizador() {
        System.out.println("*****Inicio Ejecuación*****");
        try {
            AnalizadorSIntactico asin = new AnalizadorSIntactico(
                    new proyecto(new FileReader("archivo_texto.txt")));

            Object result = asin.parse().value;
            System.out.println("*****Resultados Finales******");
        } catch (FileNotFoundException ex) {
            System.out.println(ex);
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
    String msn1 = "";
    
    
}
