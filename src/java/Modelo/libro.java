package Modelo;


public class libro {
    int Id;
    String Nombre;
    String Autor;
    String Editoriales;
    String Categoria;

    public libro() {
    }

    public libro(String Nombre, String Autor, String Editoriales, String Categoria) {
        this.Nombre = Nombre;
        this.Autor = Autor;
        this.Editoriales = Editoriales;
        this.Categoria = Categoria;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getAutor() {
        return Autor;
    }

    public void setAutor(String Autor) {
        this.Autor = Autor;
    }

    public String getEditoriales() {
        return Editoriales;
    }

    public void setEditoriales(String Editoriales) {
        this.Editoriales = Editoriales;
    }

    public String getCategoria() {
        return Categoria;
    }

    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }

    void insert(String carne, String nombre, String apellido, String correo, String genero, StringBuffer res) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void consultarRegistros(StringBuffer res, String datoParaBuscar) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void setId(String Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
