
/*

TRABALHO FINAL DE POO

NOMES: LUCAS BRUN | MANUELA PICOLI ANTUNES
MATRICULAS: 198056 | 199756

*/


import 'campeonato/Competicao.dart';
import 'campeonato/Nacional.dart';
import 'campeonato/Regional.dart';
import 'campeonato/Seletiva.dart';
import 'participantes/Aluno.dart';
import 'participantes/Equipe.dart';

main(){


  //CRIAR 8 ALUNOS E ADIONAR NA LISTA DE ALUNOS
  List<Aluno> alunos_list = [];
  Aluno aluno1 = Aluno(null, null);
  aluno1.setNomeDoAluno("Lucas Brun");
  aluno1.setSemestreDoAluno(3);

  Aluno aluno2 = Aluno(null, null);
  aluno2.setNomeDoAluno("Manuela Picoli Antunes");
  aluno2.setSemestreDoAluno(3);
  
  Aluno aluno3 = Aluno(null, null);
  aluno3.setNomeDoAluno("Joao da silva");
  aluno3.setSemestreDoAluno(6);

  Aluno aluno4 = Aluno(null, null);
  aluno4.setNomeDoAluno("Maria carla");
  aluno4.setSemestreDoAluno(2);

  Aluno aluno5 = Aluno(null, null);
  aluno5.setNomeDoAluno("Marcelo rebonatto");
  aluno5.setSemestreDoAluno(8);

  Aluno aluno6 = Aluno(null, null);
  aluno6.setNomeDoAluno("Carlos Oliveira");
  aluno6.setSemestreDoAluno(2);

  Aluno aluno7 = Aluno(null, null);
  aluno7.setNomeDoAluno("Diego Costa");
  aluno7.setSemestreDoAluno(5);

  Aluno aluno8 = Aluno(null, null);
  aluno8.setNomeDoAluno("Luis Suarez");
  aluno8.setSemestreDoAluno(8);

  alunos_list.add(aluno1);
  alunos_list.add(aluno2);
  alunos_list.add(aluno3);
  alunos_list.add(aluno4);
  alunos_list.add(aluno5);
  alunos_list.add(aluno6);
  alunos_list.add(aluno7);
  alunos_list.add(aluno8);


  //CRIAR ALGUMAS COMPETICOES;
  Competicao competicaoRegional = Regional(2010, "Serra", "RS", ["Bento Goncalves", "Canela", "Gramado", "Carlos Barbosa"], "Brasil");
  Competicao competicaoSeletiva = Seletiva(2015, "Universidade de Passo Fundo (UPF");
  Competicao competicaoNacional = Nacional(2020, "ESTADOS UNIDOS");



  //CRIAR 4 EQUIPES E ADICIONAR NA LISTA DE EQUIPES(cada equipe tem dois alunos);
List<Equipe> equipes_list = [];
for (int i = 0; i < alunos_list.length - 1; i += 2) {
  String nome_equipe = "Equipe " + i.toString();
  List<Aluno> alunos_list_aux = [alunos_list[i], alunos_list[i + 1]];

  Equipe equipe = Equipe(alunos_list_aux, nome_equipe);
  equipes_list.add(equipe);
}


  //SETAR AS EQUIPES CAMPEAS;
for (Equipe eqp in equipes_list) {
  String? nomeEquipe = eqp.getNomeDaEquipe();
  if (nomeEquipe == "Equipe 0") {
    eqp.setCompeticoesGanhadas([competicaoNacional, competicaoSeletiva]);
  } else if (nomeEquipe == "Equipe 4" || nomeEquipe == "Equipe 6") {
    eqp.setCompeticoesGanhadas([competicaoRegional]);
  }
}

  

  //MOSTAR AS EQUIPES(nome e participantes), A QUANTIDADE CAMPEONATOS GANHADOS E O TOTAL DAS PREMIACOES GANHADAS TODAS SOMADA;
  for (Equipe eqp in equipes_list) {
    double premTot = 0;
    print("=" * 30);
    print("EQUIPE: ${eqp.getNomeDaEquipe()}");
    print("PARTICIPANTES:");
    List<Aluno>? alunos = eqp.getAlunosDaEquipe();
    if (alunos != null) {
      for (Aluno aluno in alunos) {
        print(aluno.getNomeDoAluno);
      }
    }
    eqp.showTotWinnerChamps();
    for(Competicao comp in eqp.getCompeticoesGanhadas()!){
      premTot += comp.premicao();
    }
    print("PREMIACAO FATURADA PELA EQUIPE: $premTot");
  }
}