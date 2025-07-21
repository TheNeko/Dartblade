import 'dart:io';
import 'dart:math';

String escolherArma() {
  String? armaEscolhida;

  while (armaEscolhida == null) {
    print("1 - Espada longa");
    print("2 - Machado duplo");
    print("3 - Adagas");
    print("4 - Cajado de mago");

    var armaEscolhidaPeloUsuario = stdin.readLineSync();

    switch (armaEscolhidaPeloUsuario) {
      case '1':
        armaEscolhida = 'Espada longa';
        break;
      case '2':
        armaEscolhida = 'Machado duplo';
        break;
      case '3':
        armaEscolhida = 'Adagas';
        break;
      case '4':
        armaEscolhida = 'Cajado de mago';
        break;
      default:
        print("Escolha apenas uma das armas abaixo:");
    }
  }

  return armaEscolhida;
}

String rolarDado() {
  // Random().nextInt(valorMaximo) retorna um valor aleatório maior que zero e menor que o valorMaximo
  var rolagemDeDado = Random().nextInt(5);
  if (rolagemDeDado == 0) {
    return '1';
  }
  return rolagemDeDado.toString();
}

String mapearCaminhoEscolhido(String caminhoEscolhidoPeloUsuario) {
  String caminhoEscolhido = '';

  switch (caminhoEscolhidoPeloUsuario) {
    case '1':
      caminhoEscolhido = 'Floresta sombria';
      break;
    case '2':
      caminhoEscolhido = 'Vale nevado';
      break;
    case '3':
      caminhoEscolhido = 'Cavernas profundas';
      break;
    case '4':
      caminhoEscolhido = 'Dacotalandia';
      break;
  }

  return caminhoEscolhido;
}

String escolherCaminho() {
  print("Jovem aventureiro, escolha o seu caminho:");

  String? caminhoEscolhido;

  while (caminhoEscolhido == null) {
    print("1 - Floresta sombria");
    print("2 - Vale nevado");
    print("3 - Cavernas profundas");
    print("4 - Dacotalandia");
    print("5 - Fica na mão de Deus");

    var caminhoEscolhidoPeloUsuario = stdin.readLineSync();

    switch (caminhoEscolhidoPeloUsuario) {
      case '1':
        caminhoEscolhido = 'Floresta sombria';
        print("Parabéns, você escolheu o caminho $caminhoEscolhido");
        break;
      case '2':
        caminhoEscolhido = 'Vale nevado';
        print("Parabéns, você escolheu o caminho $caminhoEscolhido");
        break;
      case '3':
        caminhoEscolhido = 'Cavernas profundas';
        print("Parabéns, você escolheu o caminho $caminhoEscolhido");
        break;
      case '4':
        caminhoEscolhido = 'Dacotalandia';
        print("Parabéns, você escolheu o caminho $caminhoEscolhido");
        break;
      case '5':
        var dado = rolarDado();
        caminhoEscolhido = mapearCaminhoEscolhido(dado);
        print(
          "Você fecha os olhos e roga para uma entidade misteriosa guiar o seu caminho,",
        );
        print("o caminho escolhido foi $caminhoEscolhido");
        break;
      default:
        print("Escolha somente um dos valores abaixo:");
    }
  }

  return caminhoEscolhido;
}

bool confirmarNomeEscolhido(String nomeEscolhido) {
  // booleanos sao valores que podem ser apenas true (verdade/sim) / false (mentira/nao)
  bool? confirmacao;

  while (confirmacao == null) {
    // enquanto a variavel confirmacao nao tiver um valor, repita o código dentro das chaves:

    print("Deseja continuar com o nome $nomeEscolhido ? (S/N)");

    /// toUpperCase serve para transformar qualquer texto em maísculo, como: 'n' para 'N'
    var opcao = stdin.readLineSync()?.toUpperCase();

    switch (opcao) {
      case 'S':
        confirmacao = true;
        break;
      case 'N':
        confirmacao = false;
        break;
      default:
        print("Escolha alguma das opçoes abaixo:");
    }
  }

  return confirmacao;
}

String escolherNome() {
  print("Antes de começarmos a aventura, diga o seu nome");

  // stdin serve para ler a entrada padrao, no caso de um pc, seria a digitacao do teclado
  String? nomeEscolhido = stdin.readLineSync();

  if (nomeEscolhido == null || nomeEscolhido.isEmpty) {
    print("Seu nome nao pode ser vazio");

    // recursão, a funçao escolherNome chama a si mesma dentro de uma condiçao
    return escolherNome();
  }

  var continuarComNome = confirmarNomeEscolhido(nomeEscolhido);

  if (!continuarComNome) {
    // recursão, a funçao escolherNome chama a si mesma dentro de uma condiçao
    return escolherNome();
  }

  return nomeEscolhido;
}

void main() {
  var vida = 100.0;

  print("Seja bem vindo ao RPG");

  print("Escolha algum dos itens abaixo:");

  var nomeEscolhido = escolherNome();

  var armaEscolhida = escolherArma();

  print("Parabéns, você escolheu $armaEscolhida");

  var caminhoEscolhido = escolherCaminho();

  print(
    "Voz misteriosa: - Voce $nomeEscolhido se encontra na entrada de $caminhoEscolhido, utilizando apenas $armaEscolhida",
  );
}
