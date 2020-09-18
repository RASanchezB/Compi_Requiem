
package compila_flex;

import java.util.ArrayList;
//nodos de los arboles
public class Nodo {
    public String Etiqueta;
    public ArrayList<Nodo> hijos = new ArrayList<>();
    public String valor;
    public int idNodo;
    
    public void AñadirHijos(Nodo hijo){
        hijos.add(hijo);
    }
    
    public void setEtiqueta(String Etiqueta){
        this.Etiqueta=Etiqueta;
    }
    public String getEtiqueta(){
        return Etiqueta;
    }
    public ArrayList<Nodo> getHijos(){
        return hijos;
    }
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
}
