import 'conta.dart';

class ContaConjunta {
  Conta conta1;
  Conta conta2;
  String tipoVinculo;

  ContaConjunta(this.conta1, this.conta2, this.tipoVinculo);

  void depositarConjunto(double valor) {
    conta1.depositar(valor);
    conta2.depositar(valor);
  }

  void pagarConjunto(double valor) {
    conta1.pagar(valor);
    conta2.pagar(valor);
  }

  double consultarSaldoConjunto() {
    return conta1.consultarSaldo() + conta2.consultarSaldo();
  }
}

