// *Concrete class that implements the WritingProduct interface
import 'package:design_patterns_practice_dart/creation_patterns/factory_method/product.dart';

class Book extends WritingProduct {
  Book({required String text}) : super(text: text);
}

class Article extends WritingProduct {
  Article({required String text}) : super(text: text);
}
