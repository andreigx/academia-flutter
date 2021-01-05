void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
  int qtdPacientesMais20Anos = 0;
  List<String> familiaRahman = [];
  List<String> familiaSilva = [];
  List<String> familiaVerne = [];

  pacientes.forEach((element) {
    var dados = element.split('|');
    
    if (int.tryParse(dados[1]) > 20) {
      qtdPacientesMais20Anos += 1;
    }

    String nome = element.substring(0, element.indexOf(' '));
    String sobrenome = element.substring(element.indexOf(' ') + 1, element.indexOf('|'));
    
    switch (sobrenome) {
      case 'Rahman':
        familiaRahman.add(nome);
        break;
      case 'Silva':
        familiaSilva.add(nome);
        break;
      default:
        familiaVerne.add(nome);        
        break;
    }
  });

  print('A quantidade de pacientes com mais de 20 anos é: $qtdPacientesMais20Anos');
  print('Integrantes da família Verne: $familiaVerne');
  print('Integrantes da família Rahman: $familiaRahman');
  print('Integrantes da família Silva: $familiaSilva');
}