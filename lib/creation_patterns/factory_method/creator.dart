import 'package:design_patterns_practice_dart/creation_patterns/factory_method/product.dart';

abstract class WritingsCreator {
  // *This is the factory method, it creates "Products"
  // The factory methods need to be overwritten by subclasses
  WritingProduct createWriting();

  // Often Creator classes has some form of operation that executes code on properties of the Product
  void printPress() {
    final WritingProduct writing = createWriting();
    writing.showHeader();
  }
}
