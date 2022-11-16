
//flutter pub run build_runner build
part 'produto.g.dart';

class Produto = _Produto with _$Produto;

abstract class _Produto with Store {

  _Produto(this.titulo);

  String id = '';
  String titulo = '';


  bool realizada = false;

  setSituacao(bool situacao) {
    realizada = situacao;
  }
}

class Store {
}