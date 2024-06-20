import '../campeonato/Competicao.dart';
import 'Aluno.dart';

class Equipe {
  List<Aluno>? _alunosDaEquipe;
  List<Competicao>? _competicoesGanhadas = [];
  String? _nomeDaEquipe;

  Equipe(this._alunosDaEquipe, this._nomeDaEquipe);

  void setAlunosDaEquipe(List<Aluno> alunos) {
    _alunosDaEquipe = alunos;
  }

  void setCompeticoesGanhadas(List<Competicao> competicoes) {
    _competicoesGanhadas = competicoes;
  }

  String? getNomeDaEquipe() {
    return _nomeDaEquipe;
  }

  List<Competicao>? getCompeticoesGanhadas() {
    return _competicoesGanhadas;
  }

  List<Aluno>? getAlunosDaEquipe() {
    return _alunosDaEquipe;
  }

void showTotWinnerChamps() {
  int tot = _competicoesGanhadas!.length;
  print("Total de competições ganhas: $tot");
}
}
