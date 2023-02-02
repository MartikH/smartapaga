// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_state_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserState on UserStateBase, Store {
  late final _$userModelListAtom =
      Atom(name: 'UserStateBase.userModelList', context: context);

  @override
  List<User_Model> get userModelList {
    _$userModelListAtom.reportRead();
    return super.userModelList;
  }

  @override
  set userModelList(List<User_Model> value) {
    _$userModelListAtom.reportWrite(value, super.userModelList, () {
      super.userModelList = value;
    });
  }

  late final _$getDataAllAsyncAction =
      AsyncAction('UserStateBase.getDataAll', context: context);

  @override
  Future<void> getDataAll() {
    return _$getDataAllAsyncAction.run(() => super.getDataAll());
  }

  @override
  String toString() {
    return '''
userModelList: ${userModelList}
    ''';
  }
}
