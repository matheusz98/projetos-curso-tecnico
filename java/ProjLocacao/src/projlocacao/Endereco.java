package projlocacao;
public class Endereco {
    private String rua;
    private int numero;
    private String bairro;

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    @Override
    public String toString() {
        return "\n"
                + "Rua: " + rua + "\n"
                + "Número: " + numero + "\n"
                + "Bairro: " + bairro + "\n";
    }
    
    
}
