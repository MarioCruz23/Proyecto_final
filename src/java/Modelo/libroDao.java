package Modelo;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.List;

public class libroDao implements Interface{
    conexion cn= new conexion();
    Connection conn;
    PreparedStatement ps;
    
    @Override
    public List Listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public libro list(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean lista(libro lib) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean libros(libro lib) {
        String sql="inset into libros(Id, Nombres, Autor, Editoriales, Categorias)values('"+lib.getId()+"','"+lib.getNombre()+"','"+lib.getAutor()+"','"+lib.getEditoriales()+"','"+lib.getCategoria()+"'";
        try {
            conn=cn.getConnection();
            ps=conn.prepareStatement(sql);
            ps.executeUpdate();
        }catch (Exception e){
        }
        return false;
    }

    @Override
    public boolean eliminar(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private static class conexion {

        public conexion() {
        }

        private Connection getConnection() {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
    }
    
}
