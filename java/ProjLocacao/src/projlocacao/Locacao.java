 package projlocacao;

import java.util.Calendar;

public class Locacao {

    private double valorLocacao;
    private double valorMulta;
    private Funcionario objFuncionario;
    private Usuario objUsuario;
    private Livro objLivro;
    private Data dataLocacao;
    private Data dataDevolocao;

    public Locacao() {
        this.dataDevolocao = new Data();
        this.dataLocacao = new Data();
        this.objLivro = new Livro();
        this.objUsuario = new Usuario();
        this.objFuncionario = new Funcionario();
    }

    public double getValorLocacao() {
        return valorLocacao;
    }

    public void setValorLocacao(double valorLocacao) {
        this.valorLocacao = valorLocacao;
    }

    public double getValorMulta() {
        return valorMulta;
    }

    public void setValorMulta(double valorMulta) {
        this.valorMulta = valorMulta;
    }

    public Funcionario getObjFuncionario() {
        return objFuncionario;
    }

    public void setObjFuncionario(Funcionario objFuncionario) {
        this.objFuncionario = objFuncionario;
    }

    public Usuario getObjUsuario() {
        return objUsuario;
    }

    public void setObjUsuario(Usuario objUsuario) {
        this.objUsuario = objUsuario;
    }

    public Livro getObjLivro() {
        return objLivro;
    }

    public void setObjLivro(Livro objLivro) {
        this.objLivro = objLivro;
    }

    public Data getDataLocacao() {
        return dataLocacao;
    }

    public void setDataLocacao(Data dataLocacao) {
        this.dataLocacao = dataLocacao;
    }

    public Data getDataDevolocao() {
        return dataDevolocao;
    }

    public void setDataDevolocao(Data dataDevolocao) {
        this.dataDevolocao = dataDevolocao;
    }

    public double calcularLocacao() {
        return 0;
    }

    public void locarLivro() {
        this.getObjLivro().status = true;
    }

    public void devolverLivro() {
        this.getObjLivro().status = false;
                ;
    }

    @Override
    public String toString() {
        return "\n"
                + "Valor da locação: " + valorLocacao + "\n"
                + "Valor da multa: " + valorMulta + "\n"
                + "Funcionário: " + objFuncionario + "\n"
                + "Usuário: " + objUsuario + "\n"
                + "Livro: " + objLivro + "\n"
                + "Data da locação: " + dataLocacao + "\n"
                + "Data da devolução: " + dataDevolocao + "\n";
    }

}
