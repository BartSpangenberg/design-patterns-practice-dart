// Abstract product
abstract class Kitchen {
  late List<String> tools;

  Kitchen({required this.tools});
}

// Concrete products
class JapaneseKitchen extends Kitchen {
  JapaneseKitchen({required List<String> tools}) : super(tools: tools);
}

class ItalianKitchen extends Kitchen {
  ItalianKitchen({required List<String> tools}) : super(tools: tools);
}
