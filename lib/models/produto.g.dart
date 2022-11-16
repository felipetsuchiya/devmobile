// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Produto on _Produto, Store {
  late final _$realizadaAtom =
  Atom(name: '_Produto.realizada', context: context);

  @override
  bool get realizada {
    _$realizadaAtom.reportRead();
    return super.realizada;
  }

  @override
  set realizada(bool value) {
    _$realizadaAtom.reportWrite(value, super.realizada, () {
      super.realizada = value;
    });
  }

  late final _$_ProdutoActionController =
  ActionController(name: '_Produto', context: context);

  @override
  dynamic setSituacao(bool situacao) {
    final _$actionInfo =
    _$_ProdutoActionController.startAction(name: '_Produto.setSituacao');
    try {
      return super.setSituacao(situacao);
    } finally {
      _$_ProdutoActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
realizada: ${realizada}
    ''';
  }
}