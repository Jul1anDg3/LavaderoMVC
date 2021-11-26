/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

public class Servicio {
    int id;
    String cliente;
    String fecha;
    int tipoAutoId;
    int lavadoId;
    int desinfeccionId;

    public Servicio() {
    }

    public Servicio(int id, String cliente, String fecha, int tipoAutoId, int lavadoId, int desinfeccionId) {
        this.id = id;
        this.cliente = cliente;
        this.fecha = fecha;
        this.tipoAutoId = tipoAutoId;
        this.lavadoId = lavadoId;
        this.desinfeccionId = desinfeccionId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getTipoAutoId() {
        return tipoAutoId;
    }

    public void setTipoAutoId(int tipoAutoId) {
        this.tipoAutoId = tipoAutoId;
    }

    public int getLavadoId() {
        return lavadoId;
    }

    public void setLavadoId(int lavadoId) {
        this.lavadoId = lavadoId;
    }

    public int getDesinfeccionId() {
        return desinfeccionId;
    }

    public void setDesinfeccionId(int desinfeccionId) {
        this.desinfeccionId = desinfeccionId;
    }


    
}
