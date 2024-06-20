class Aluno{

  String? _nomeDoAluno;
  int? _semestreDoAluno;

  Aluno(this._nomeDoAluno, this._semestreDoAluno);

  String? get getNomeDoAluno => _nomeDoAluno;
  int? get getSemestreDoAluno => _semestreDoAluno;

  void setNomeDoAluno(String nomeDoAluno){
    _nomeDoAluno = nomeDoAluno;
  }

  void setSemestreDoAluno(int semestreDoAluno){
    _semestreDoAluno = semestreDoAluno;
  }



}