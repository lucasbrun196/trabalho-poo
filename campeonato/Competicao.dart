abstract class Competicao{

  int _ano;
  
  Competicao(this._ano);

  int get getAno => _ano;
  set setAno(int ano){
    _ano = ano;
  }

  double premicao();

  

}