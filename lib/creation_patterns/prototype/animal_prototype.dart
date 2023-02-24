class Deer {
  bool isHairy = false;
  num height = 0;
  bool hasHorns = true;

  Deer({required this.isHairy, required this.height});

  Deer.fromSource(Deer source) {
    hasHorns = source.hasHorns;
    height = source.height;
    isHairy = source.isHairy;
  }

  Deer clone() {
    return Deer.fromSource(this);
  }
}

// abstract class AnimalPrototype {
//   late bool isHairy;
//   late num height;

//   AnimalPrototype(data) {
//     print("data: $data");
//     isHairy = data['isHairy'] ?? false;
//     height = data['height'] ?? 0;
//   }

//   AnimalPrototype clone();
// }

// class Deer extends AnimalPrototype {
//   bool hasHorns = true;

//   Deer(data) : super(data);

//   Deer.fromSource(Deer source) : super(source) {
//     hasHorns = source.hasHorns;
//   }

//   @override
//   Deer clone() {
//     return Deer(this);
//   }
// }
