import 'pessoa.dart';

class Conta {
  int numeroConta;
  Pessoa titular;
  double saldo;

  Conta(this.numeroConta, this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void pagar(double valor) {
    saldo -= valor;
  }

  double consultarSaldo() {
    return saldo;
  }
}
