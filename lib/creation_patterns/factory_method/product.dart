// *This is the Product
// *It's an abstract class, all product must implemnt the form
class WritingProduct {
  String text;

  WritingProduct({required this.text});

  showHeader() {
    print(text.toUpperCase());
  }
}
