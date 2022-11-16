// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

import 'package:animaii/models/produto.dart';

mixin _$ProdutoStore on _ProdutoStore, Store {
  Computed<bool>? _$isCarregandoComputed;

  @override
  bool get isCarregando =>
      (_$isCarregandoComputed ??= Computed<bool>(() => super.isCarregando,
          name: '_ProdutoStore.isCarregando'))
          .value;

  late final _$listaDePrdutoAtom =
  Atom(name: '_ProdutoStore.listaDeProduto', context: context);

  @override
  ObservableList<Produto> get listaDeProduto {
    _$listaDeProdutoAtom.reportRead();
    return super.listaDeProduto;
  }

  @override
  set listaDeProduto(ObservableList<Produto> value) {
    _$listaDeProdutoAtom.reportWrite(value, super.listaDeProduto, () {
      super.listaDeProduto = value;
    });
  }

  late final _$obsFutureAtom =
  Atom(name: '_ProdutoStore.obsFuture', context: context);

  @override
  ObservableFuture<List<Produto>> get obsFuture {
    _$obsFutureAtom.reportRead();
    return super.obsFuture;
  }

  @override
  set obsFuture(ObservableFuture<List<Produto>> value) {
    _$obsFutureAtom.reportWrite(value, super.obsFuture, () {
      super.obsFuture = value;
    });
  }

  late final _$carregarProdutoAsyncAction =
  AsyncAction('_ProdutoStore.carregarProduto', context: context);

  @override
  Future<void> carregarProduto() {
    return _$carregarProdutoAsyncAction.run(() => super.carregarProduto());
  }

  late final _$salvarProdutoAsyncAction =
  AsyncAction('_ProdutoStore.salvarAfazer', context: context);

  @override
  Future<void> salvarProduto(String titulo) {
    return _$salvarProdutoAsyncAction.run(() => super.salvarProduto(titulo));
  }

  late final _$excluirProdutoAsyncAction =
  AsyncAction('_ProdutoStore.excluirProduto', context: context);

  @override
  Future<void> excluirProduto(Produto produto) {
    return _$excluirProdutoAsyncAction.run(() => super.excluirProduto(produto));
  }

  @override
  String toString() {
    return '''
listaDeProduto: ${listaDeProduto},
obsFuture: ${obsFuture},
isCarregando: ${isCarregando}
    ''';
  }
}