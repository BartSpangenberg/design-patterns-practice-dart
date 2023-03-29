class TextMemento {
  final String _sentence;

  TextMemento({required String sentence}) : _sentence = sentence;

  String getState() {
    return _sentence;
  }
}
