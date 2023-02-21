import 'package:design_patterns_practice_dart/creation_patterns/factory_method/concrete_creator.dart';
import 'package:design_patterns_practice_dart/creation_patterns/factory_method/creator.dart';

enum Configuration {
  magazineStore,
  library,
}

class Application {
  // *At initialization a specific configuration of the Creator class is assigned
  late WritingsCreator writingCreator;

  Application() {
    final Configuration configuration = Configuration.magazineStore;

    if (configuration == Configuration.magazineStore) {
      writingCreator = ArticleCreator();
    } else {
      writingCreator = BookCreator();
    }
  }
}

main() {
  final Application app = Application();
  app.writingCreator.printPress();
  app.writingCreator.printPress();
  app.writingCreator.printPress();
  app.writingCreator.printPress();
}
