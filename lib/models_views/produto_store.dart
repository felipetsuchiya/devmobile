import 'package:animaii/models/produto.dart';
import 'package:mobx/mobx.dart';
import 'package:mine/models/afazer.dart';
import '/repositories/produto_repository.dart';

//flutter pub run build_runner build
part 'produto_store.g.dart';

class ProdutoStore = _ProdutoStore with _$ProdutoStore;

abstract class _ProdutoStore with Store {

  _ProdutoStore(){
    carregarProduto();
  }

  ProdutoRepository repository = ProdutoRepository();

  @observable
  ObservableList<Produto> listaDeProduto = ObservableList();

  @observable
  ObservableFuture<List<Produto>> obsFuture = ObservableFuture.value([]);

  @computed
  bool get isCarregando{
    return obsFuture.status == FutureStatus.pending;
  }

  @action
  Future<void> carregarProduto() async {
    final futureList = repository.listarProduto();
    obsFuture = ObservableFuture(futureList);
    final produto = await futureList;
    listaDeProduto.addAll(produto);
  }

  @action
  Future<void> salvarProduto(String titulo) async{
    final produto = await repository.salvarAfazer(Produto(titulo));
    if (produto != null){
      listaDeProduto.add(produto);
    }
  }

  @action
  Future<void> excluirProduto(Produto produto) async{
    final foiExcluido = await repository.excluirAfazer(produto);
    if (foiExcluido){
      listaDeProduto.removeWhere((element) => element == produto);
    }
  }

  void atualizarProduto(Produto produto){
    repository.salvarProduto(produto);
  }
}