import 'dart:io';
import 'dart:async';
//import 'dart:math';

Future<void> digitar(String texto, int delayMs) async {
  for (var letra in texto.runes) {
    stdout.write(String.fromCharCode(letra));

    await Future.delayed(Duration(milliseconds: delayMs));
  }
  print('');
}

String? nomePersonagem() {
  print("Escolha um nome para seu personagem: ");
  String? nomeescolhido = stdin.readLineSync();

  if (nomeescolhido == null || nomeescolhido.isEmpty) {
    print("Não pode ser esse nome animal");
    return nomePersonagem();
  }

  print("Blz, você deseja usar esse nome mesmo? (S/N)");
  var confirmacao = stdin.readLineSync()?.toUpperCase();
  switch (confirmacao) {
    case "S":
      return nomeescolhido;
    case "N":
      nomeescolhido = null;
      return nomePersonagem();
    default:
      nomeescolhido = null;
      return nomePersonagem();
  }
}

String? armaPersonagem(){
  print("\nEscolha a sua arma negão! \n \n");
  print("1- 🗡️ Espada do Betinha \n“Espada lendária que corta promessas políticas e também fatia pão francês.”\n+5 Carisma quando o inimigo for um NPC aposentado. \n-5 em todos os dados de loot PQ N SOBRA NADA PRO BETINHA\n");
  print("2- 🥖 Pão com Mortadela +10 \n“Um lanchão raiz que restaura 25 de HP e 80 de moral trabalhista.” \nEfeito bônus: regenera o orgulho CLT por 3 turnos.\n");
  print("3- 📱 Zap™ do Rully \n“Equipado com os melhores grupos de homosexualismo e homofobia do server.” \n+10 Confusão nos inimigos que tentam entender as mensagens. \n+100% de chance dos inimigos virarem gays depois de serem atingidos por esse item.\n");
  print("4- 🛹 Skate do Mano Brown \n“Agora você sabe exatamente como andar de skate.”\n+3 Sabedoria Urbana. Diminui dano de ataques classe ‘playboy’.\n");
  print("5- 🧤 Luva de Pedreiro \n“Recebaaaaaaaa!!! \n”Luva encantada que faz um estrondo mais alto a cada golpe. \n+5 de dano por acerto.\n");
  print("6- ❖ Pix da Sorte \n“Você faz um Pix de 5 de vida para o URUBU DO PICX. \n”**Tabela do PIX** \n5 de vida ➡  50 de retorno \n10 de vida ➡  100 de retorno \nIrmã do Rully ➡  +1000 de créditos sociais de retorno\n");

  String? armaSelecionada = stdin.readLineSync();

  if (armaSelecionada == null || armaSelecionada.isEmpty){
    print("Digite apenas números entre 1 a 6, SEU MACACO!");
    return armaPersonagem();
  }
  switch (armaSelecionada) {
    case "1":
      return armaSelecionada = "🗡️ Espada do Betinha";
    case "2":
      return armaSelecionada = "🥖 Pão com Mortadela +10";
    case "3":
      return armaSelecionada = "📱 Zap™ do Rully";
    case "4":
      return armaSelecionada = "🛹 Skate do Mano Brown";
    case "5":
      return armaSelecionada = "🧤 Luva de Pedreiro";
    case "6":
      return armaSelecionada = "❖ Pix da Sorte";
    default:
    //arma do ren bussula de hentão
    //arma do kevin amuleto da imortalidade até conseguir uma casa no rpg
    //arma do leo discurso no jutsu
      print("Digite apenas números entre 1 a 6, SEU MACACO!");
      armaSelecionada = null;
      armaPersonagem();
  }

}

String? racaPersonagem(){
  print("Escolha a raça do seu personagem: \n1- Elfo hp:10 atk:2 int:x1.5\n2- Gato Humanoide hp:10 atk:3 dex:+2\n3- Gnomo(bota no hard) hp:5 atk:1 int:x0.5 dex:-4 def:1");
  String? racaescolhida = stdin.readLineSync();
  if(racaescolhida ==null || racaescolhida.isEmpty){
    print("Digite números entre 1 a 3, seu bobalhão");
    racaescolhida = null;
    return racaPersonagem();
  }
  switch(racaescolhida){
    case "1":
      return racaescolhida = "Elfo 🤓";
    case "2":
      return racaescolhida = "Gato Humanoide 😼";
    case "3":
      return racaescolhida = "Gnomo 🤮";
    default:
  }
  
}

void limparConsole(){
  print(List.filled(100, '\n').join());
}
void main() async{
  limparConsole();
  await digitar("Bem vindo ao DartBlade ! \nAqui você encontrará muitas Bistecas e referêcias ao segissu ( ͡° ͜ʖ ͡°)", 35);
  var perso1 = nomePersonagem();
  var racaProta = racaPersonagem();
  await digitar("Vamos começar sua jornada $perso1! MASSS, POREM, ENTRETANTO, TODAVIA...", 35);
  await digitar("Preciso que você escolha um item primeiro.", 35);
  await digitar("PS: Recomendo que pegue a Espada do BETINHA, item muito bom (CONFIA)", 70);
  var armaDoProta = armaPersonagem();
  await digitar("", 1000);
  limparConsole();
  await digitar("", 1000);
  await digitar("Otimo! agora $perso1, um $racaProta com $armaDoProta parte numa jornada mt bisteca", 50);
}
