class Arm implements Iterable {
  int shoulder = 100;
  int elbow = 100;
  int foreArm = 100;
  int upperArm = 100;
  int wrist = 100;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Leg implements Iterable {
  int knee = 100;
  int ankle = 100;
  int thigh = 100;
  int shank = 100;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Hand implements Iterable {
  int thumb = 100;
  int index = 100;
  int middle = 100;
  int ring = 100;
  int little = 100;
  int palm = 100;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Feet implements Iterable {
  int big = 100;
  int index = 100;
  int middle = 100;
  int ring = 100;
  int little = 100;
  int arch = 100;
  int heel = 100;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Torso implements Iterable {
  int lungs = 100;
  int ribs = 100;
  int heart = 100;
  int stomatch = 100;
  int breast = 100;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Head implements Iterable {
  int leftEye = 100;
  int rightEye = 100;
  int nose = 100;
  int forehead = 100;
  int chin = 100;
  int lips = 100;
  int tonge = 100;
  int teeth = 100;

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

  Body() {}
  List<dynamic>? selectPart(int token1) {
    switch (token1) {
      case 1:
        return this._head.toList();
      case 2:
        return this._leftArm.toList();
      case 3:
        return this._rightArm.toList();
      case 5:
        return this._leftHand.toList();
      case 6:
        return this._rightHand.toList();
      case 7:
        return this._torso.toList();
      case 8:
        return this._leftLeg.toList();
      case 9:
        return this._rightLeg.toList();
      case 10:
        return this._leftFeet.toList();
      case 11:
        return this._rightFeet.toList();
    }
  }

  getHit(int damage, int token) {
    var part = selectPart(token);
    return part?.asMap();
  }

  setLive() {}
}
