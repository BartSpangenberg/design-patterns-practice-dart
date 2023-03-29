import 'package:design_patterns_practice_dart/behavioral/basic_memento/text_memento.dart';

class TextOriginator {
  String _sentence = "";

  onChangeText({required String text}) {
    _sentence = text;
  }

  getText() {
    print(_sentence);
  }

  TextMemento save() {
    return TextMemento(sentence: _sentence);
  }

  restore({required TextMemento memento}) {
    _sentence = memento.getState();
  }
}
