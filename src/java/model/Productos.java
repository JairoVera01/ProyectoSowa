/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jairo
 */
public class Productos {
    private int id;
    private String nombre_socio;
    private String producto;
    private float precio;
    private String url_producto;

    public Productos() {
    }

    public Productos(int id, String nombre_socio, String producto, float precio, String url_producto) {
        this.id = id;
        this.nombre_socio = nombre_socio;
        this.producto = producto;
        this.precio = precio;
        this.url_producto = url_producto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre_socio() {
        return nombre_socio;
    }

    public void setNombre_socio(String nombre_socio) {
        this.nombre_socio = nombre_socio;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getUrl_producto() {
        return url_producto;
    }

    public void setUrl_producto(String url_producto) {
        this.url_producto = url_producto;
    }

    
    
    
}
