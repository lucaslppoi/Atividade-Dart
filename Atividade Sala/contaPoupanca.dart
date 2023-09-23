import 'conta.dart';
import 'pessoa.dart';

class ContaPoupanca extends Conta {
  ContaPoupanca(int numeroConta, Pessoa titular) : super(numeroConta,             titular, 50.0);
}
