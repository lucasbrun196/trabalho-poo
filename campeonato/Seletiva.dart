import 'Competicao.dart';

class Seletiva extends Competicao{

  String? _nomeDaUniversidade;


  Seletiva(super.ano, this._nomeDaUniversidade);

  @override
  double premicao() {
    return 1000;
  }

  String? get getNomeDaUniversidade => _nomeDaUniversidade;
  set setNomeDaUniversidade(String nomeDaUniversidade){
    _nomeDaUniversidade = nomeDaUniversidade;
  }



  

}