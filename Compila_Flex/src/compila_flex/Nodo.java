package compila_flex;

import java.util.ArrayList;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
//nodos de los arboles
public class Nodo {
    public String valor;
    public int idNodo;
    public Nodo padre;
    public ArrayList<Nodo> hijos = new ArrayList<>();
    
    Nodo(String valor, Nodo padre, int ref){
        this.valor = valor;
        this.padre = padre;
        this.idNodo = ref;
    }
    //Getters y setters
    public void setValor(String valor){
        this.valor=valor;
    }
    public String getValor(){
        return valor;
    }
    public void setID(int id){
        this.idNodo=id;
    }
    public int getID(){
        return idNodo;
    }
    public ArrayList<Nodo> getHijos(){
        return hijos;
    }
    public void setPadre(Nodo p){
        this.padre = p;
    }
    
    //FUnciones importantes
    public void addHijo(Nodo hijo){
        hijos.add(hijo);
    }public void addHijo(String valor, int ref){
        hijos.add(new Nodo(valor,null,ref));
    }
    public void addHijoAntes(Nodo hijo){
        hijo.setPadre(this);
        this.hijos.add(0,hijo);
    }
    /*public String print(Nodo padre ) {
        String pad = "";
        String cadena = "";
        for (Nodo hijo : padre.getHijos()) {
            if (hijo.valor != null) {
                cadena += "\"" + padre.getID() + "," + padre.getValor() + "\" -> \"" + hijo.idNodo + "_" + hijo.valor + "\";";
                cadena += "\n";
                cadena += print(hijo);
            }
        }
        return cadena;
    }
    public void escribirArchivo(String v){
        FileWriter fichero = null;
        PrintWriter pw = null;
        try{
            fichero = new FileWriter("src/grafico.dot",true);
            pw = new PrintWriter(fichero);
            pw.print(v);
        }catch(Exception e){

        }finally{
            try{
                if(null != fichero){
                    fichero.close();
                }
            }catch(Exception e){

            }
        }
    }
    public void limpiar(String v){
        FileWriter fichero = null;
        PrintWriter pw = null;
        try{
            fichero = new FileWriter("src/grafico.dot");
            pw = new PrintWriter(fichero);
            pw.print(v);
        }catch(Exception e){

        }finally{
            try{
                if(null!=fichero){
                    fichero.close();
                }
            }catch(Exception e){
                
            }
        }
    }*/


}
