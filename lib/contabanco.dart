class Conta{
  double dinheiro;

  Conta(this.dinheiro);

  sacar(double valor){
    if(dinheiro>=valor){
      dinheiro = dinheiro - valor;
      print("O saque foi feito com sucesso");
      print(dinheiro);
    }else
      print("Ops!, Você não tem saldo suficiente na sua conta!");
  }
  
  depositar(double valor){
    dinheiro = dinheiro + valor;
    print("O dinheiro foi depositado com sucesso!");
    print(dinheiro);
  }

  trasferencia(double valor){
    if(dinheiro>=valor){
      dinheiro = dinheiro - valor - 10;
      print("Trasferencia feita com sucesso!");
      print(dinheiro);
    }else
      print("Ops!, Você não tem saldo suficiente na sua conta!");
  }
}