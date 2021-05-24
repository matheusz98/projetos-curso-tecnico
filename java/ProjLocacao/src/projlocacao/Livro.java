package projlocacao;
public class Livro {
    private String titulo;
    private String genero;
    private String autor;
    protected boolean status;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
    
    public String mostrarStatus(){
    if(this.status == true){
        return "livro locado"; 
    }
    return "livro em estoque";
    }
    
    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    @Override
    public String toString() {
        return "\n"
                + "Título: " + titulo + "\n"
                + "Gênero: " + genero + "\n"
                + "Status: " + this.mostrarStatus() + "\n";   
    }

    
    
    
}
