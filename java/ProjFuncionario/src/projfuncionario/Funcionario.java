package projfuncionario;

public class Funcionario {

    private String nome;
    private int chapa;
    private long cpf;
    private String rg;
    private String endereco;
    private String fone;
    private String sexo;
    private String email;
    private String cargo;
    private byte quantidadeDeDependentes;
    private byte quantidadeDeFilhos;
    private byte tempoDeServicoEmAno;
    private double valorHora;
    private double cargaHorariaBase;
    private double quantidadeDeHorasExtras;
    private boolean opcaoVT;
    private double valorPagoEmPassagens;
    private byte grauinsalubridade;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getChapa() {
        return chapa;
    }

    public void setChapa(int chapa) {
        this.chapa = chapa;
    }

    public long getCpf() {
        return cpf;
    }

    public void setCpf(long cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getFone() {
        return fone;
    }

    public void setFone(String fone) {
        this.fone = fone;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public byte getQuantidadeDeDependentes() {
        return quantidadeDeDependentes;
    }

    public void setQuantidadeDeDependentes(byte quantidadeDeDependentes) {
        this.quantidadeDeDependentes = quantidadeDeDependentes;
    }

    public byte getQuantidadeDeFilhos() {
        return quantidadeDeFilhos;
    }

    public void setQuantidadeDeFilhos(byte quantidadeDeFilhos) {
        this.quantidadeDeFilhos = quantidadeDeFilhos;
    }

    public byte getTempoDeServico() {
        return tempoDeServicoEmAno;
    }

    public void setTempoDeServico(byte tempoDeServico) {
        this.tempoDeServicoEmAno = tempoDeServico;
    }

    public double getValorHora() {
        return valorHora;
    }

    public void setValorHora(double valorHora) {
        this.valorHora = valorHora;
    }

    public double getCargaHorariaBase() {
        return cargaHorariaBase;
    }

    public void setCargaHorariaBase(double cargaHorariaBase) {
        this.cargaHorariaBase = cargaHorariaBase;
    }

    public double getQuantidadeDeHorasExtras() {
        return quantidadeDeHorasExtras;
    }

    public void setQuantidadeDeHorasExtras(double quantidadeDeHorasExtras) {
        this.quantidadeDeHorasExtras = quantidadeDeHorasExtras;
    }

    public double getValorPagoEmPassagens() {
        return valorPagoEmPassagens;
    }

    public void setValorPagoEmPassagens(double valorPagoEmPassagens) {
        this.valorPagoEmPassagens = valorPagoEmPassagens;
    }

    public byte getGrauinsalubridade() {
        return grauinsalubridade;
    }

    public void setGrauinsalubridade(byte grauinsalubridade) {
        this.grauinsalubridade = grauinsalubridade;
    }

    public void receberVt() {
        opcaoVT = true;
    }

    public void cancelarVt() {
        opcaoVT = false;
    }

    public String mostrarLegendaVt() {
        if(opcaoVT == true){
            return "Sim, ganha VT";
        }
        return "Não, não ganha VT";
    }

    public double calcularSalarioBruto() {
        return this.valorHora * this.cargaHorariaBase;
    }

    public double calcularVt() {
        double vT = calcularSalarioBruto() * 0.06;
        if (vT > this.valorPagoEmPassagens) {
            return this.valorPagoEmPassagens;
        }
        return vT;
    }

    public double calcularHoraExtra() {
        if(this.quantidadeDeHorasExtras <= 2){
            return (this.quantidadeDeHorasExtras * this.valorHora) * 0.50;
        }else{
            return ((this.quantidadeDeHorasExtras - 2) * this.valorHora) + (2 * this.valorHora * 0.50);                    
        }
    }

    public double calcularInss() {
        if (calcularSalarioBruto() <= 1659.38) {
            return calcularSalarioBruto() * 0.08;
        } else if (calcularSalarioBruto() <= 2765.66) {
            return calcularSalarioBruto() * 0.09;
        } else if (calcularSalarioBruto() <= 5531.31) {
            return calcularSalarioBruto() * 0.11;
        }
        return 608.44;
    }

    public double calcularInsalubridade() {
        switch (this.grauinsalubridade) {
            case 1:
                return 1030.06 * 0.40;
            case 2:
                return 1030.06 * 0.20;
        }
        return 1030.06 * 0.10;

    }

    public double calcularSalarioFamilia() {
        switch (this.quantidadeDeFilhos) {
            case 0:
                return 0;
            case 1:
                return this.calcularSalarioBruto() * 0.02;
            case 2:
            case 3:
                return this.calcularSalarioBruto() * 0.04;
        }
        return this.calcularSalarioBruto() * 0.05;

    }

    public double calcularPlanoDeSaude() {
        return (0.005 + 0.01 * this.quantidadeDeDependentes) * this.calcularSalarioBruto();
    }

    public double planoDeCarreira() {
        return this.tempoDeServicoEmAno / 3 * 0.05 * this.calcularSalarioBruto();
    }

    public double calcularSalarioLiquido() {
        return this.calcularSalarioBruto() + this.calcularHoraExtra() + this.calcularInsalubridade() + this.calcularSalarioFamilia() - this.calcularInss() - this.calcularPlanoDeSaude() - this.calcularVt();
    }

    @Override
    public String toString() {
        return "\n"
                + "Nome: "+this.nome+"\n"
                + "Chapa: "+this.chapa+"\n"
                + "CPF: "+this.cpf+"\n"
                + "RG: "+this.rg+"\n"
                + "Endereço: "+this.endereco+"\n"
                + "Fone: "+this.fone+"\n"
                + "Sexo: "+this.sexo+"\n"
                + "E-Mail: "+this.email+"\n"
                + "Cargo: "+this.cargo+"\n"
                + "Quantidade de dependentes: "+this.quantidadeDeDependentes+"\n"
                + "Quantidade de filhos: "+this.quantidadeDeFilhos+"\n"
                + "Tempo de serviço em ano: "+this.tempoDeServicoEmAno+"\n"
                + "Valor hora: "+this.valorHora+"\n"
                + "Carga horaria base: "+this.cargaHorariaBase+"\n"
                + "Quantidade de horas extras: "+this.quantidadeDeHorasExtras+"\n"
                + "Valor Pago em passagens: "+this.valorPagoEmPassagens+"\n"
                + "Grau de insalubridade: "+this.grauinsalubridade+"\n"
                + "VT: "+mostrarLegendaVt()+"\n"
                + "Salário bruto: "+calcularSalarioBruto()+"\n"
                + "Preço do VT: "+calcularVt()+"\n"
                + "Ganho de horas extras: "+calcularHoraExtra()+"\n"
                + "INSS: "+calcularInss()+"\n"
                + "Insalubridade: "+calcularInsalubridade()+"\n"
                + "Salário família: "+calcularSalarioFamilia()+"\n"
                + "Plano de saúde: "+calcularPlanoDeSaude()+"\n"
                + "Plano de carreira: "+planoDeCarreira()+"\n"
                + "Salário líquido: "+calcularSalarioLiquido()+"\n";
    }
}
