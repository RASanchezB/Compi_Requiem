/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compila_flex;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

/**
 *
 * @author Erick C
 */
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
        //System.out.println(archivo.exists()+"payasada");
        if (archivo.exists()) {
            try {
                bw = new BufferedWriter(new FileWriter(archivo));
                System.out.print("Escriba el codigo:");
                String expresion = leer.nextLine();
                bw.write(expresion);
            } catch (IOException ex) {
                System.out.println("" + ex);
            }
        } else {
            try {
                try {
                    bw = new BufferedWriter(new FileWriter(archivo));
                } catch (IOException ex) {
                    System.out.println("" + ex);
                }
                System.out.print("Escriba el codigo:");
                String expresion = leer.nextLine();
                bw.write(expresion);
            } catch (IOException ex) {
                System.out.println("" + ex);
            }
        }
        try {
            bw.close();
        } catch (IOException ex) {
            System.out.println("");
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
