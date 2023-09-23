import 'conta.dart';
import 'pessoa.dart';

class ContaCorrente extends Conta {
  ContaCorrente(int numeroConta, Pessoa titular) : super(numeroConta,             titular, 0.0);
}