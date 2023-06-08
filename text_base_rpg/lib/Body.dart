import 'dart:core';

class Part {
  var _name;
  var _live;
  bool _death = false;

  Part(String Name, int live) {
    this._name = Name;
    this._live = live;
    this._death = false;
  }

  subtractLive(int damage) {
    this._live -= damage;
    if (this._live < 0) {
      this._death = true;
    }
  }
}

class Arm implements Iterable {
  Part shoulder = new Part("shoulder", 50);
  Part elbow = new Part("elbow", 30);
  Part foreArm = new Part("foreArm", 10);
  Part upperArm = new Part("upperArm", 10);
  Part wrist = new Part("wrist", 5);
  //@override
  //Iterator get iterator => [shoulder, elbow, foreArm, upperArm, wrist];
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Leg implements Iterable {
  Part knee = new Part("knee", 50);
  Part ankle = new Part("ankle", 20);
  Part thigh = new Part("thigh", 10);
  Part shank = new Part("shank", 10);
  late List<Part> iterable;

  Leg() {
    iterable = [knee, ankle, thigh, shank];
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Hand implements Iterable {
  Part thumb = new Part("thumb", 5);
  Part index = new Part("index", 5);
  Part middle = new Part("middle", 5);
  Part ring = new Part("ring", 5);
  Part pinky = new Part("pinky", 5);
  Part palm = new Part("palm", 10);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Feet implements Iterable {
  Part big = new Part("big", 5);
  Part index = new Part("index", 5);
  Part middle = new Part("middle", 5);
  Part ring = new Part("ring", 5);
  Part pinky = new Part("pinky", 5);
  Part arch = new Part("arch", 10);
  Part heel = new Part("heel", 10);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Torso implements Iterable {
  Part lungs = new Part("lungs", 60);
  Part ribs = new Part("lungs", 40);
  Part heart = new Part("heart", 100);
  Part stomatch = new Part("stomatch", 50);
  Part breast = new Part("breast", 15);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Head implements Iterable {
  Part leftEye = new Part("left eye", 50);
  Part rightEye = new Part("right eye", 50);
  Part nose = new Part("nose", 20);
  Part forehead = new Part("forehead", 15);
  Part chin = new Part("chin", 15);
  Part lips = new Part("lips", 5);
  Part tonge = new Part("tonge", 30);
  Part teeth = new Part("teeth", 60);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Body implements Head, Arm, Leg, Torso, Hand, Feet {
  Head _head = Head();
  Torso _torso = Torso();
  Arm _leftArm = Arm();
  Arm _rightArm = Arm();
  Hand _leftHand = Hand();
  Hand _rightHand = Hand();
  Leg _leftLeg = Leg();
  Leg _rightLeg = Leg();
  Feet _leftFeet = Feet();
  Feet _rightFeet = Feet();

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  Map<String, int> ToMap(dynamic part, int index) {
    var partMap = <String, int>{};
    for (var entry in part) {
      var partName = getPartName(index).iterator;
      while (partName.moveNext()) {
        print(partName.current.toString());
        partMap[partName.toString()] = entry;
      }
    }
    return partMap;
  }

  dynamic getPartName(int value) {
    switch (value) {
      case 0:
        return _head;
      case 1:
        return _torso;
      case 2:
        return _leftArm;
      case 3:
        return _rightArm;
      case 4:
        return _leftHand;
      case 5:
        return _rightHand;
      case 6:
        return _leftLeg;
      case 7:
        return this.ToMap(_rightLeg, 1);
      case 8:
        return _leftFeet;
      case 9:
        return _rightFeet;
    }
  }

  getHit(int damage, int token) {
    var part = getPartName(token);
  }

  setLive() {}
}
