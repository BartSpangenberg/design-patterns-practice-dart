import 'package:design_patterns_practice_dart/creation_patterns/abstract_factory/app.dart';

main() {
  final AbstractFactoryApp app =
      AbstractFactoryApp(restaurantType: RestaurantType.italian);
  app.restaurantFactory.prepareMeal();
}
