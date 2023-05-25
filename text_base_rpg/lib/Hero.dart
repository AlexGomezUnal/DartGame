import 'Character.dart';

class Hero extends Character {

  @override
  List<dynamic>? selectPart(int token) {
    return super.selectPart(token);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
