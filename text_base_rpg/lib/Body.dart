class Arm {
  int shoulder = 100;
  int elbow = 100;
  int foreArm = 100;
  int upperArm = 100;
  int wrist = 100;
}

class Leg {
  int knee = 100;
  int ankle = 100;
  int thigh = 100;
  int shank = 100;
}

class Hand {
  int thumb = 100;
  int index = 100;
  int middle = 100;
  int ring = 100;
  int little = 100;
  int palm = 100;
}

class Feet {
  int big = 100;
  int index = 100;
  int middle = 100;
  int ring = 100;
  int little = 100;
  int arch = 100;
  int heel = 100;
}

class Torso {
  int lungs = 100;
  int ribs = 100;
  int heart = 100;
  int stomatch = 100;
  int breast = 100;
}

class Head {
  int leftEye = 100;
  int rightEye = 100;
  int nose = 100;
  int forehead = 100;
  int chin = 100;
  int lips = 100;
  int tonge = 100;
  int teeth = 100;
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

  selectBodyPart(int num) {
    if (num == 0) {
      return false;
    }
    if (num >= 1 && num <= 3) {
      return this._head;
    }
    if (num >= 3 && num <= 7) {
      return this._torso;
    }
    if (num >= 7 && num <= 8) {
      return this._leftArm;
    }
    if (num >= 8 && num <= 9) {
      return this._rightArm;
    }
    if (num >= 10 && num <= 11) {
      return this._leftLeg;
    }
    if (num >= 12 && num <= 13) {
      return this._rightLeg;
    }
    if (num >= 14 && num <= 15) {
      return this._leftHand;
    }
    if (num >= 16 && num <= 17) {
      return this._rightHand;
    }
    if (num >= 18 && num <= 19) {
      return this._leftFeet;
    }
    if (num >= 19 && num <= 20) {
      return this._rightFeet;
    }
  }

  getHit(int damage, int token) {
    var part = selectBodyPart(token);
  }

  setLive() {
    for (var part in this._head) {}
  }
}
