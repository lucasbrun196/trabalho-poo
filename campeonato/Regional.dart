import 'Competicao.dart';

class Regional extends Competicao{

  String _pais;
  String _uf;
  String _regiao;
  List<String> _cidadesParticipantes;

  Regional(super.ano, this._regiao, this._uf, this._cidadesParticipantes, this._pais);

  @override
  double premicao() {
    return 10000;
  }

  String get getPais => _pais;
  String get getUf => _uf;
  String get getRegiao => _regiao;
  List<String> get getCidadesParticipantes => _cidadesParticipantes;

  set setPais(String pais){
    _pais = pais;
  }

  set setUf(String uf){
    _uf = uf;
  }

  set setRegiao(String regiao){
    _regiao = regiao;
  }

  set setCidadesParticipantes(List<String> cidadesParticipantes){
    _cidadesParticipantes = cidadesParticipantes;
  }

}