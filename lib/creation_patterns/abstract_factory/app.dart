import 'package:design_patterns_practice_dart/creation_patterns/abstract_factory/restaurant_factory.dart';

enum RestaurantType {
  japanese,
  italian,
}

class AbstractFactoryApp {
  late RestaurantFactory restaurantFactory;

  AbstractFactoryApp({required RestaurantType restaurantType}) {
    if (restaurantType == RestaurantType.japanese) {
      restaurantFactory = JapaneseRestaurantFactory();
    } else {
      restaurantFactory = ItalianRestaurantFactory();
    }
  }
}
