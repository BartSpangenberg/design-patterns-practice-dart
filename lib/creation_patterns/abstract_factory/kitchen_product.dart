// Abstract product
abstract class Food {
  late List<String> ingredients;

  Food({required this.ingredients});
}

// Concrete products
class JapaneseFood extends Food {
  JapaneseFood({required List<String> ingredients})
      : super(ingredients: ingredients);
}

class ItalianFood extends Food {
  ItalianFood({required List<String> ingredients})
      : super(ingredients: ingredients);
}
