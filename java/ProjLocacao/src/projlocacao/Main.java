package projlocacao;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        Locacao objLocacao = new Locacao();
        byte op;
        do {
            System.out.print(":::: Sistema de Cadastramento ::::\n"
                    + "Escolha uma opção abaixo\n"
                    + "[1] - Cadastrar funcionário\n"
                    + "[2] - Cadastrar usuário\n"
                    + "[3] - Cadastrar livro\n"
                    + "[4] - Mostrar todos os dados do cadastro\n"
                    + "[5] - Ir para locação\n"
                    + "[0] - Sair\n"
                    + "Opção: ");
            op = leia.nextByte();

            switch (op) {
                case 1:
                    System.out.print("\n<<<< Funcionario >>>>\n"
                            + "Nome: ");
                    objLocacao.getObjFuncionario().setNome(leia.next());

                    System.out.print("CPF: ");
                    objLocacao.getObjFuncionario().setCpf(leia.nextLong());

                    System.out.print("Chapa: ");
                    objLocacao.getObjFuncionario().setChapa(leia.next());

                    System.out.print("Salário: ");
                    objLocacao.getObjFuncionario().setChapa(leia.next());

                    System.out.print("---- Endereço do funcionário ----\n"
                            + "Rua: ");
                    objLocacao.getObjFuncionario().getObjEndereco().setRua(leia.next());

                    System.out.print("Número: ");
                    objLocacao.getObjFuncionario().getObjEndereco().setNumero(leia.nextInt());

                    System.out.print("Bairro: ");
                    objLocacao.getObjFuncionario().getObjEndereco().setBairro(leia.next());

                    break;
                case 2:
                    System.out.print("\n<<<< Usuário >>>>\n"
                            + "Nome: ");
                    objLocacao.getObjUsuario().setNome(leia.next());

                    System.out.print("Código: ");
                    objLocacao.getObjUsuario().setCodigo(leia.nextInt());

                    System.out.print("CPF: ");
                    objLocacao.getObjUsuario().setCpf(leia.nextLong());

                    System.out.print("---- Endereço do usuário ----\n"
                            + "Rua: ");
                    objLocacao.getObjUsuario().getObjEndereco().setRua(leia.next());

                    System.out.print("Número: ");
                    objLocacao.getObjUsuario().getObjEndereco().setNumero(leia.nextInt());

                    System.out.print("Bairro: ");
                    objLocacao.getObjUsuario().getObjEndereco().setBairro(leia.next());
                    break;

                case 3:
                    System.out.print("<<<< Livro >>>\n"
                            + "Título: ");
                    objLocacao.getObjLivro().setTitulo(leia.next());

                    System.out.print("Gênero: ");
                    objLocacao.getObjLivro().setGenero(leia.next());

                    System.out.print("Autor: ");
                    objLocacao.getObjLivro().setAutor(leia.next());

                    break;

                case 4:
                    System.out.print("<<<< Todos os dados de cadastro >>>>" + "\n"
                            + "Livro" + objLocacao.getObjLivro().toString() + "\n"
                            + "Usuário" + objLocacao.getObjUsuario().toString() + "\n"
                            + "Funcionário" + objLocacao.getObjFuncionario().toString());
                    break;

                case 5:
                    do {
                        System.out.print("\n:::: Sistema de Locação ::::\n"
                                + "Escolha uma opção abaixo\n"
                                + "[1] - Locar livro\n"
                                + "[2] - Devolver livro\n"
                                + "[3] - Mostrar os dados do livro locado\n"
                                + "[4] - Mostra os dados do livro devolvido\n"
                                + "[5] - Voltar ao menu principal\n"
                                + "Digite aqui a opção: \n");
                        op = leia.nextByte();

                        switch (op) {
                            case 1:
                                System.out.print("Valor da locação: ");
                                objLocacao.setValorLocacao(leia.nextDouble());

                                System.out.print("Valor da multa em dias: ");
                                objLocacao.setValorMulta(leia.nextDouble());

                                System.out.print("<<<< Data de locação >>>>\n"
                                        + "Dia: ");
                                objLocacao.getDataLocacao().setDia(leia.nextInt());

                                System.out.print("Mês: ");
                                objLocacao.getDataLocacao().setMes(leia.nextInt());

                                System.out.print("Ano: ");
                                objLocacao.getDataLocacao().setAno(leia.nextInt());

                                System.out.print("<<<< Data de devolução >>>>\n"
                                        + "Dia: ");
                                objLocacao.getDataDevolocao().setDia(leia.nextInt());

                                System.out.print("Mês: ");
                                objLocacao.getDataDevolocao().setMes(leia.nextInt());

                                System.out.print("Ano: ");
                                objLocacao.getDataDevolocao().setAno(leia.nextInt());

                                objLocacao.locarLivro();

                                break;

                            case 2:
                                System.out.print("<<<< Devoluçã do livro >>>>\n"
                                        + "Valor a ser pago: ");
                                objLocacao.calcularLocacao();

                                objLocacao.devolverLivro();

                                break;
                            case 3:
                                System.out.print("<<<< Dados do livro locado >>>>\n"
                                        + "Livro"+objLocacao.getObjLivro().toString());
                                

                                System.out.print("Data da locação: " + objLocacao.getDataLocacao().toString() + "\n"
                                        + "Data de devolução: " + objLocacao.getDataDevolocao().toString() + "\n");
                                break;
                            case 4:
                                System.out.print("<<<< Dados do livro devolvido >>>>\n"
                                        + "Livro"+objLocacao.getObjLivro().toString());
                                

                                System.out.print("Data da locação: " + objLocacao.getDataLocacao().toString() + "\n"
                                        + "Data de devolução: " + objLocacao.getDataDevolocao().toString() + "\n");

                                break;
                            case 5:
                                break;

                            default:
                                System.out.print("\n ERRO \n"
                                        + "TENTE NOVAMENTE !!!!\n");
                        }

                    } while (op != 5);

                default:
                    System.out.print("\n ERRO \n"
                            + "TENTE NOVAMENTE !!!!\n");

            }

        } while (op != 0);

    }

}
