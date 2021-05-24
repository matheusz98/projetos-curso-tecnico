package projfuncionario;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        Funcionario objFuncionario = new Funcionario();

        System.out.print(":::: Cadastro de funcionário ::::\n"
                + "nome: ");
        objFuncionario.setNome(leia.next());

        System.out.print("Chapa: ");
        objFuncionario.setChapa(leia.nextInt());

        System.out.print("CPF: ");
        objFuncionario.setCpf(leia.nextLong());

        System.out.print("RG: ");
        objFuncionario.setRg(leia.next());

        System.out.print("Endereço: ");
        objFuncionario.setEndereco(leia.next());

        System.out.print("Fone: ");
        objFuncionario.setFone(leia.next());

        Tela.limparTela();

        byte op;
        do {
            System.out.print("Escolha o sexo conforme abaixo: \n"
                    + "1 - Masculino\n"
                    + "2 = Feminino\n"
                    + "Digite a opção: ");
            op = leia.nextByte();

            switch (op) {
                case 1:
                    objFuncionario.setSexo("Masculino");
                    break;
                case 2:
                    objFuncionario.setSexo("Feminino");
                default:
                    System.err.print("\nERRO\n"
                            + "Tente novamente!\n");
            }
        } while (op < 1 || op > 2);

        Tela.limparTela();

        System.out.print("E-Mail: ");
        objFuncionario.setEmail(leia.next());

        System.out.print("Cargo: ");
        objFuncionario.setCargo(leia.next());

        System.out.print("Quantidade de dependente: ");
        objFuncionario.setQuantidadeDeDependentes(leia.nextByte());

        System.out.print("Quantidade de filhos: ");
        objFuncionario.setQuantidadeDeFilhos(leia.nextByte());

        System.out.print("Tempo de serviço em anos: ");
        objFuncionario.setTempoDeServico(leia.nextByte());

        System.out.print("Valor hora: ");
        objFuncionario.setValorHora(leia.nextDouble());

        System.out.print("Carga horaria base: ");
        objFuncionario.setCargaHorariaBase(leia.nextDouble());

        System.out.print("Quantidade de horas extras: ");
        objFuncionario.setQuantidadeDeHorasExtras(leia.nextDouble());

        Tela.limparTela();

        do {
            System.out.print("Escolha do Vale Transporte conforme abaixo: \n"
                    + "1 - Sim, ganha VT\n"
                    + "2 - Não, não ganha VT\n"
                    + "Digite a opção: ");
            op = leia.nextByte();
            switch (op) {
                case 1:
                    System.out.print("Digite o valor gasto no transporte público: ");
                    objFuncionario.setValorPagoEmPassagens(leia.nextDouble());
                    objFuncionario.receberVt();
                    break;
                case 2:
                    objFuncionario.cancelarVt();
                default:
                    System.err.print("\nERRO\n"
                            + "Tente novamente!\n");
            }

        } while (op < 1 || op > 2);

        Tela.limparTela();

        do {
            System.out.print(":::: INSALUBRIDADE ::::\n"
                    + "1 - Máximo 40%\n"
                    + "2 - Médo 20%\n"
                    + "3 - Mínimo 10%\n"
                    + "Digite a opção: ");
            objFuncionario.setGrauinsalubridade(leia.nextByte());
            if (objFuncionario.getGrauinsalubridade() > 0 && objFuncionario.getGrauinsalubridade() < 4) {

            } else {
                System.err.print("\nERRO\n"
                        + "Tente novamente\n");
            }
        } while (objFuncionario.getGrauinsalubridade() < 1 || objFuncionario.getGrauinsalubridade() > 3);

        Tela.limparTela();

        do {
            System.out.print("\n::::ESCOLHA UMA OPÇÃO::::\n"
                    + "1 - Mostar nome e salário bruto\n"
                    + "2 - Mostrar nome e valor de horas extras\n"
                    + "3 - Mostar nomer e valor do VT\n"
                    + "4 - Mostar nomer e valor do INSS\n"
                    + "5 - Mostar nomer e valor da insalubridade\n"
                    + "6 - Mostar nomer e valor do salário família\n"
                    + "7 - Mostar nomer e valor do plano carreira\n"
                    + "8 - Mostar nomer e valor total do plano de saúde\n"
                    + "9 - Mostar nomer e valor do salário líquido\n"
                    + "10 - Mostrar todos os dados e cálculos de funcionario\n"
                    + "11 - cadastrar novo funcionário\n"
                    + "0 - Sair do sistema\n"
                    + "Digite aqui sua opção: ");
            op = leia.nextByte();

            switch (op) {
                case 1:
                    System.out.println("\nNome: " + objFuncionario.getNome() + "\n"
                            + "Salário bruto: " + objFuncionario.calcularSalarioBruto() + "\n");
                    break;
                case 2:
                    System.out.println("\nNome: " + objFuncionario.getNome() + "\n"
                            + "Valor de horas extras: " + objFuncionario.calcularHoraExtra() + "\n");
                    break;
                case 3:
                    System.out.println("\nNome: " + objFuncionario.getNome() + "\n"
                            + "Valor do VT: " + objFuncionario.calcularVt() + "\n");
                    break;
                case 4:
                    System.out.println("\nNome: " + objFuncionario.getNome() + "\n"
                            + "Valor INSS: " + objFuncionario.calcularInsalubridade() + "\n");
                    break;
                case 5:
                    System.out.println("\nNome: " + objFuncionario.getNome() + "\n"
                            + "Valor insalubridade: " + objFuncionario.calcularInsalubridade() + "\n");
                    break;
                case 6:
                    System.out.println("\nNome: " + objFuncionario.getNome() + "\n"
                            + "Salário família: " + objFuncionario.calcularSalarioFamilia() + "\n");
                    break;
                case 7:
                    System.out.println("\nNome: " + objFuncionario.getNome() + "\n"
                            + "Valor do plano carreira: " + objFuncionario.planoDeCarreira() + "\n");
                    break;
                case 8:
                    System.out.println("\nNome: " + objFuncionario.getNome() + "\n"
                            + "Valor totál do plano de saúde: " + objFuncionario.calcularPlanoDeSaude() + "\n");
                    break;
                case 9:
                    System.out.println("\nNome: " + objFuncionario.getNome() + "\n"
                            + "Valor do salário líquido: " + objFuncionario.calcularSalarioLiquido() + "\n");
                    break;
                case 10:
                    System.out.print("\nDados do funcionário: " + objFuncionario);
                    break;
                case 11:
                    Tela.limparTela();
                    System.out.print("\n:::: Cadastro de funcionário ::::\n"
                            + "nome: ");
                    objFuncionario.setNome(leia.next());

                    System.out.print("Chapa: ");
                    objFuncionario.setChapa(leia.nextInt());

                    System.out.print("CPF: ");
                    objFuncionario.setCpf(leia.nextLong());

                    System.out.print("RG: ");
                    objFuncionario.setRg(leia.next());

                    System.out.print("Endereço: ");
                    objFuncionario.setEndereco(leia.next());

                    System.out.print("Fone: ");
                    objFuncionario.setFone(leia.next());
                    Tela.limparTela();

                    do {
                        System.out.print("Escolha o sexo conforme abaixo: \n"
                                + "1 - Masculino\n"
                                + "2 = Feminino\n"
                                + "Digite a opção: ");
                        op = leia.nextByte();

                        switch (op) {
                            case 1:
                                objFuncionario.setSexo("Masculino");
                                break;
                            case 2:
                                objFuncionario.setSexo("Feminino");
                            default:
                                System.err.print("\nERRO\n"
                                        + "Tente novamente!\n");
                        }
                    } while (op < 1 || op > 2);
                    Tela.limparTela();

                    System.out.print("E-Mail: ");
                    objFuncionario.setEmail(leia.next());

                    System.out.print("Cargo: ");
                    objFuncionario.setCargo(leia.next());

                    System.out.print("Quantidade de dependente: ");
                    objFuncionario.setQuantidadeDeDependentes(leia.nextByte());

                    System.out.print("Quantidade de filhos: ");
                    objFuncionario.setQuantidadeDeFilhos(leia.nextByte());

                    System.out.print("Tempo de serviço em anos: ");
                    objFuncionario.setTempoDeServico(leia.nextByte());

                    System.out.print("Valor hora: ");
                    objFuncionario.setValorHora(leia.nextDouble());

                    System.out.print("Carga horaria base: ");
                    objFuncionario.setCargaHorariaBase(leia.nextDouble());

                    System.out.print("Quantidade de horas extras: ");
                    objFuncionario.setQuantidadeDeHorasExtras(leia.nextDouble());
                    Tela.limparTela();

                    do {
                        System.out.print("Escolha do Vale Transporte conforme abaixo: \n"
                                + "1 - Sim, ganha VT\n"
                                + "2 - Não, não ganha VT\n"
                                + "Digite a opção: ");
                        op = leia.nextByte();
                        switch (op) {
                            case 1:
                                System.out.print("Digite o valor gasto no transporte públic: ");
                                objFuncionario.setValorPagoEmPassagens(leia.nextDouble());
                                objFuncionario.receberVt();
                                break;
                            case 2:
                                objFuncionario.cancelarVt();
                            default:
                                System.err.print("\nERRO\n"
                                        + "Tente novamente!\n");
                        }

                    } while (op < 1 || op > 2);
                    Tela.limparTela();
                    do {
                        System.out.print(":::: INSALUBRIDADE ::::\n"
                                + "1 - Máximo 40%\n"
                                + "2 - Médo 20%\n"
                                + "3 - Mínimo 10%\n"
                                + "Digite a opção: ");
                        objFuncionario.setGrauinsalubridade(leia.nextByte());
                        if (objFuncionario.getGrauinsalubridade() > 0 && objFuncionario.getGrauinsalubridade() < 4) {

                        } else {
                            System.err.print("\nERRO\n"
                                    + "Tente novamente\n");
                        }
                    } while (objFuncionario.getGrauinsalubridade() < 1 || objFuncionario.getGrauinsalubridade() > 3);
                    Tela.limparTela();

                    break;
                case 0:
                    System.out.println("\nSistem encerrado");
                    break;
                default:
                    System.err.println("\nERRO\n"
                            + "Tente novamente!\n");
            }

        } while (op != 0);
    }

}
