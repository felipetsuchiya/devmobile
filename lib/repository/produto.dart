import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import '/models/produto.dart';

class ProdutoRepository {

  //CRUD
  Future<Produto?> salvarProduto(Produto produto) async {
    final parser = ParseObject('Produto')
      ..set('title', produto.titulo)
      ..set('done', produto.realizada);

    if (produto.id.isNotEmpty){
      parser.objectId = produto.id;
    }

    final ParseResponse response = await parser.save();
    if (response.success && response.result != null) {
      final object = response.result as ParseObject;
      produto.id = object.objectId!;
      return produto;
    }
    return null;
  }

  Future<List<Produto>> listarProduto() async {
    QueryBuilder<ParseObject> queryTodo =
    QueryBuilder<ParseObject>(ParseObject('Produto'));
    final ParseResponse apiResponse = await queryTodo.query();

    List<Produto> lista = [];
    if (apiResponse.success && apiResponse.results != null) {
      final objects = apiResponse.results as List<ParseObject>;
      for (ParseObject object in objects){

        final id = object.objectId;
        final titulo = object.get<String>('title')!;
        final realizada =  object.get<bool>('done')!;
        Produto produto = Produto(titulo);
        produto.id = id!;
        produto.realizada = realizada;
        lista.add(produto);
      }
      return lista;
    } else {
      return [];
    }
  }

  Future<bool> excluirProduto(Produto produto) async {
    var parse = ParseObject('Produto')..objectId = produto.id;
    final ParseResponse response = await parse.delete();
    if (response.success){
      return true;
    }
    return false;
  }
}