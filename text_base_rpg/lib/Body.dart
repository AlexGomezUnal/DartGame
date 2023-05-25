class Arm implements Iterable<int> {
  int shoulder = 100;
  int elbow = 100;
  int foreArm = 100;
  int upperArm = 100;
  int wrist = 100;

  @override
  Iterator<int> get iterator => [shoulder, elbow, foreArm, upperArm, wrist].iterator;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Leg implements Iterable<int> {
  var knee = {"knee",100};
  int ankle = 100;
  int thigh = 100;
  int shank = 100;

  @override
  Iterator<dynamic> get iterator => [knee, ankle, thigh, shank].iterator;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Hand implements Iterable<int> {
  int thumb = 100;
  int index = 100;
  int middle = 100;
  int ring = 100;
  int little = 100;
  int palm = 100;

  @override
  Iterator<int> get iterator => [thumb, index, middle, ring, little, palm].iterator;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Feet implements Iterable<int> {
  int big = 100;
  int index = 100;
  int middle = 100;
  int ring = 100;
  int little = 100;
  int arch = 100;
  int heel = 100;

  @override
  Iterator<int> get iterator => [big, index, middle, ring, little, arch, heel].iterator;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Torso implements Iterable<int> {
  int lungs = 100;
  int ribs = 100;
  int heart = 100;
  int stomach = 100;
  int breast = 100;

  @override
  Iterator<int> get iterator => [lungs, ribs, heart, stomach, breast].iterator;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Head implements Iterable<int> {
  int leftEye = 100;
  int rightEye = 100;
  int nose = 100;
  int forehead = 100;
  int chin = 100;
  int lips = 100;
  int tongue = 100;
  int teeth = 100;

  @override
  Iterator<int> get iterator => [leftEye, rightEye, nose, forehead, chin, lips, tongue, teeth].iterator;

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
      while(partName.moveNext()){
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
        return _rightLeg;
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