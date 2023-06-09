import "dart:math";
import "Body.dart";

abstract class Character implements Body {
  late Random token = Random();

  late int _charisma;
  late int _luck;
  late int _live;
  late int _mana;
  late int _stamina;
  late int _stealth;
  late int _physicalForce = token.nextInt(100);
  late int _mentalForce;
  late Body _body = new Body();
  late String _name;

  changeName(String Name) {
    this._name = Name;
  }

  setLuck() {
    this._luck = token.nextInt(100);
  }

  attack() {}

  getHit(int damage, int token) {
    var part = this._body.getHit(damage, token);
  }
}
