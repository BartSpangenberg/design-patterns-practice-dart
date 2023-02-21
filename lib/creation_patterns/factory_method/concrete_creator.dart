import 'dart:math';

import 'package:design_patterns_practice_dart/creation_patterns/factory_method/concrete_product.dart';
import 'package:design_patterns_practice_dart/creation_patterns/factory_method/creator.dart';
import 'package:design_patterns_practice_dart/creation_patterns/factory_method/product.dart';

// *This is a subclass it inherits properties from super class (WritingCreator)
// *It overwrrites the createWriting method
class BookCreator extends WritingsCreator {
  @override
  WritingProduct createWriting() {
    return Book(text: "From Good to Great");
  }
}

class ArticleCreator extends WritingsCreator {
  @override
  WritingProduct createWriting() {
    final Random random = Random();
    final int randomNumber = random.nextInt(1000);
    return Book(text: "$randomNumber Productivity tips");
  }
}
