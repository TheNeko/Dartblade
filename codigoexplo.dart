void main() {
  // usando lista para dados
  var personagemLista = [100, "carlos", "espada longa", "espadao curto"];

  // acessando valores via index
  var vida = personagemLista[0];
  var nome = personagemLista[1];
  var item = personagemLista[2];

  /// mapas
  /// funciona por chave:valor
  /// nome de chave sao sempre únicos
  /// melhor que o array quando você precisa ter dados estruturados
  /// mais rápido que o array quando você sabe qual chave precisa
  /// funciona com hashtable

  var personagemSimples = {
    "nome": "rully",
    "vida": 10,
    "itens": [
      "espada",
      "escudo",
    ],
  };

  Map personagemComplexo = {
    "nome": "rully",
    "vida": 10,
    "itens": [
      {
        "nome": "espada",
        "dano": 50,
        "defesa": 5,
        "durabilidade": 10,
      },
      {
        "nome": "escudo",
        "dano": 5,
        "defesa": 80,
        "durabilidade": 10,
      }
    ],
  };

  List classesPreDefinidos = <Map<String, dynamic>> [
    {
      "nome": "Guerreiro",
      "vida": 10,
      "itens": [
        {
          "nome": "espada",
          "dano": 50,
          "defesa": 5,
          "durabilidade": 10,
        },
        {
          "nome": "escudo",
          "dano": 5,
          "defesa": 80,
          "durabilidade": 10,
          
        }
      ],
    },
    {
      "nome": "Mago",
      "vida": 10,
      "itens": [
        {
          "nome": "cajado",
          "dano": 50,
          "defesa": 5,
          "durabilidade": 10,
        },
      ],
    },
  ];

// acessando array de itens de dentro dos itens do personagem
/*
  var itensDoPersonagem = personagemComplexo["itens"];
  var primeiroItem = itensDoPersonagem[0];
  var nomeItem = primeiroItem["nome"];
*/
  // lendo dados de um mapa
  var vidaPersonagem = personagemSimples["vida"];
  classesPreDefinidos[0]["itens"][1]["nome"] = "batata";
  //print(classesPreDefinidos);

  Map resgatarLista = classesPreDefinidos[0]; //aqui seleciona o guerreiro
  List resgatarItem = resgatarLista["itens"]; //aqui seleciona o "itens"
  Map resgatarEscudo = resgatarItem[1];      //aqui seleciona o escudo
  resgatarEscudo ["passiva"] = "EU DESEJO UM CAFEZIN";
  print(resgatarEscudo);

  var deletarPassiva = resgatarEscudo.remove("passiva");
  print(resgatarEscudo);

  return;
  // escrevendo dados em um mapa
//////////////////  personagemSimples["vida"] = 100;

  // exemplo: cadastro de usuário com mapa

  var cadastroDeUsuarioVazio = {
    "nome": null,
    "sobrenome": null,
    "dataNascimento": null,
    "endereco": {
      "cep": null,
      "rua": null,
      "numero": null,
      "cidade": null,
      "estado": null,
    }
  };
  var cadastroDeUsuarioComDados = {
    "nome": "rully",
    "sobrenome": "alves",
    "dataNascimento": "10/09/1998",
    "endereco": {
      "cep": "24350358",
      "rua": "rua quatrocentos e doze",
      "numero": "415",
      "cidade": "niterói",
      "estado": "RJ",
    }
  };

// acessando dados do mapa
/*
  var enderecoComDados = cadastroDeUsuarioComDados["endereco"];
  var cep = enderecoComDados["cep"];
*/
}






// estruturas de dados part 1

// orientação a objetos
// try/catch (exceçoes)
// enum (enumeração)
// pattern matching
// records
// concorrência/paralelismo (de fuder)

