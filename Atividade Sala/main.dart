import 'contaConjunta.dart';
import 'contaCorrente.dart';
import 'contaPoupanca.dart';
import 'contaSalario.dart';
import 'empresa.dart';
import 'pessoa.dart';

enum TipoConta { Poupanca, Salario, Corrente }

void main() {
  // Professor criei este projeto no Replit, pois não está funcionando o dart no 
  // computador. Caso queira testar aqui está o link 
  // https://replit.com/@LUCASLORENZAO/Atividade-sala#main.dart
  final pLucas = Pessoa("Lucas", 20, "123123123", "solteiro");
  final pRenan = Pessoa("Renan", 20, "321321321", "solteiro");
  final eAlimentos = Empresa("Alimentos bom", "Alimentos bom ou mal", "123123123123");
  
  final cpLucas = ContaPoupanca(101, pLucas);
  final csJoao = ContaSalario(102, pLucas);
  final ccBruno = ContaCorrente(103, pLucas);
  final ccRenan = ContaCorrente(104, pRenan);

  final contaConjuntaLR = ContaConjunta(cpLucas, ccRenan, "Socios");

  print("Saldo da Conta: R\$ ${cpLucas.consultarSaldo()}");
  cpLucas.depositar(1000);
  print("Saldo da Conta: R\$ ${cpLucas.consultarSaldo()}");
  print("Saldo da Conta: R\$ ${ccRenan.consultarSaldo()}");
  ccRenan.depositar(1000);
  print("Saldo da Conta: R\$ ${ccRenan.consultarSaldo()}");
  ccRenan.pagar(500);
  print("Saldo da Conta: R\$ ${ccRenan.consultarSaldo()}");
  contaConjuntaLR.depositarConjunto(0);
  print("Saldo da Conta Conjunto: R\$ ${contaConjuntaLR.consultarSaldoConjunto()}");
}
