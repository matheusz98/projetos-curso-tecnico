package projlocacao;
public class Funcionario {
    private String nome;
    private long cpf;
    private String chapa;
    private double salari;
    private Endereco objEndereco;
    
    public Funcionario(){
        this.objEndereco = new Endereco();
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public long getCpf() {
        return cpf;
    }

    public void setCpf(long cpf) {
        this.cpf = cpf;
    }

    public String getChapa() {
        return chapa;
    }

    public void setChapa(String chapa) {
        this.chapa = chapa;
    }

    public double getSalari() {
        return salari;
    }

    public void setSalari(double salari) {
        this.salari = salari;
    }

    public Endereco getObjEndereco() {
        return objEndereco;
    }

    public void setObjEndereco(Endereco objEndereco) {
        this.objEndereco = objEndereco;
    }

    @Override
    public String toString() {
        return "\n"
                + "Nome: " + nome + "\n"
                + "CPF: " + cpf + "\n"
                + "Chapa: " + chapa + "\n"
                + "Salário: " + salari + "\n"
                + "Endereço: " + objEndereco + "\n";
    }
    
}
