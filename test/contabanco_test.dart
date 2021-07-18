import 'package:conta_de_banco/contabanco.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  group("Os testes devem todos funcionarem", (){
    final conta = Conta(3000);
    test("Ao sacar o dinheiro deve diminuir", (){
      conta.sacar(85);
      expect(conta.dinheiro, 2915);
      conta.sacar(100);
      expect(conta.dinheiro, 2815);
      conta.sacar(1000);
      expect(conta.dinheiro, 1815);
    });

    test("Ao depositar o dinheiro deve aumentar", (){
      conta.depositar(500);
      expect(conta.dinheiro, 2315);
      conta.depositar(100);
      expect(conta.dinheiro, 2415);
    });

    test("Ao fazer a trasferência o dinheiro deve diminuir", (){
      conta.trasferencia(900);
      expect(conta.dinheiro, 1505);
      conta.trasferencia(1600);
      expect(conta.dinheiro, 1505);
    });
  });
}