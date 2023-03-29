import 'package:design_patterns_practice_dart/behavioral/basic_memento/text_memento.dart';
import 'package:design_patterns_practice_dart/behavioral/basic_memento/text_originator.dart';

class TextCaretaker {
  final TextOriginator _originator;
  final List<TextMemento> _history = [];

  TextCaretaker({required TextOriginator originator})
      : _originator = originator;

  void addText() {
    final TextMemento memento = _originator.save();
    _history.add(memento);
  }

  void undo() {
    final TextMemento memento = _history.removeLast();
    _originator.restore(memento: memento);
  }
}
