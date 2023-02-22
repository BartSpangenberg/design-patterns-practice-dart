import 'package:design_patterns_practice_dart/creation_patterns/abstract_factory/food_product.dart';
import 'package:design_patterns_practice_dart/creation_patterns/abstract_factory/kitchen_product.dart';

abstract class RestaurantFactory {
  Kitchen buildKitchen();
  Food buyFood();

  void prepareMeal() {
    final Kitchen kitchen = buildKitchen();
    final Food food = buyFood();
    print(
        "The dish was created with ${kitchen.tools}, it contains ${food.ingredients}. Enjoy!");
  }
}

class JapaneseRestaurantFactory extends RestaurantFactory {
  @override
  Kitchen buildKitchen() {
    return JapaneseKitchen(tools: ["Big pans", "Sharp knives"]);
  }

  @override
  Food buyFood() {
    return JapaneseFood(
        ingredients: ["Fresh fish", "Green vegetables", "Noodles"]);
  }
}

class ItalianRestaurantFactory extends RestaurantFactory {
  @override
  Kitchen buildKitchen() {
    return ItalianKitchen(tools: ["Pizza oven", "High chef hats"]);
  }

  @override
  Food buyFood() {
    return ItalianFood(ingredients: ["Tomatoes", "Olives"]);
  }
}
