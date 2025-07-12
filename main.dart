import 'dart:io';

void main() {
  print("Bem vindo ao DartBlade! 💥 \nAqui você encontrará muitas Bistecas e referêcias ao segissu ( ͡° ͜ʖ ͡°)",);
  print("Escolha o nome do seu personagem: ");
  var nomePersonagem = stdin.readLineSync();
  print("Seu Nome é : $nomePersonagem, Deseja continuar com esse nome? (S/N)");
  var respPersonagem = stdin.readLineSync();
  var respostaPersonagem = respPersonagem!.toUpperCase();

  while (respostaPersonagem == "N") {
    print("Escolha o nome do seu personagem: ");
    var nomenovo = stdin.readLineSync();
    nomePersonagem = nomenovo;
    print("Seu Nome é: $nomePersonagem ");
    respostaPersonagem = "S";
    break;
  }

  while (respostaPersonagem != "S" && respostaPersonagem != "N") {
    print("DIGITE 'S' OU 'N' SEU MACACO");
    print("Escolha o nome do seu personagem: ");
    var nomePersonagem = stdin.readLineSync();
    print("Seu Nome é: $nomePersonagem");
    respostaPersonagem = "S";
  }


  print("Vamos começar sua jornada dia 31/02/2077 $nomePersonagem!");
}
