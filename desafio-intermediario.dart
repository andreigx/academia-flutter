main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.

  List<String> pessoasFiltradas = pessoas.toSet().toList();
  int qtdMasculino = 0;
  int qtdFeminino = 0;
  String pessoaMaisVelha = '';
  int maisVelho = 0;

  pessoasFiltradas.forEach((pessoa) {
    List<String> elemento = pessoa.split('|');

    if (elemento[2].substring(0, 1) == 'M') {
      qtdMasculino++;
    } else {
      qtdFeminino++;
    }

    if (int.parse(elemento[1]) > maisVelho) {
      maisVelho = int.parse(elemento[1]);
      pessoaMaisVelha = elemento[0];
    }
  });

  print('Lista sem duplicados:');
  pessoasFiltradas.forEach((element) => print(element));
  print('');
  print('Quantidade Masculino: $qtdMasculino');
  print('Quantidade Feminino: $qtdFeminino');
  print('');
  print('A lista com somente maiores de idade: ');
  pessoasFiltradas.removeWhere((element) => int.parse(element.split('|')[1]) <= 18);
  pessoasFiltradas.forEach((element) => print(element));
  print('Quantidade da lista: ${pessoasFiltradas.length} \n');
  print('');
  print('A pessoa mais velha é $pessoaMaisVelha, com $maisVelho anos');
}