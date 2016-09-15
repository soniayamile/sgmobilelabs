
package Model;


public class Usuario extends Conectar{

    private String Id_Usuario;
    private String Nombre;
    private String Apellido;
    private String Clave;
    private int Id_Perfil;
    private String Foto;

   

    public Usuario(String Id_Usuario, String Nombre, String Apellido, String Clave, int Id_Perfil, String Foto) {
        this.Id_Usuario = Id_Usuario;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Clave = Clave;
        this.Id_Perfil = Id_Perfil;
        this.Foto = Foto;
    }

    public String getId_Usuario() {
        return Id_Usuario;
    }

    public void setId_Usuario(String Id_Usuario) {
        this.Id_Usuario = Id_Usuario;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getClave() {
        return Clave;
    }

    public void setClave(String Clave) {
        this.Clave = Clave;
    }

    public int getId_Perfil() {
        return Id_Perfil;
    }

    public void setId_Perfil(int Id_Perfil) {
        this.Id_Perfil = Id_Perfil;
    }

    public String getFoto() {
        return Foto;
    }

    public void setFoto(String Foto) {
        this.Foto = Foto;
    }
    
    
    
    
}
