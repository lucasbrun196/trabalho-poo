import 'Competicao.dart';

class Nacional extends Competicao{

  String _pais;
  
  Nacional(super.ano, this._pais);


  @override
  double premicao() {
    return 1000000.00;
  }

  String get getPais => _pais;
  set setPais(String pais){
    _pais = pais;
  }

}