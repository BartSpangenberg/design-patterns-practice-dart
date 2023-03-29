import 'package:design_patterns_practice_dart/behavioral/basic_memento/text_caretaker.dart';
import 'package:design_patterns_practice_dart/behavioral/basic_memento/text_originator.dart';

// I don't like this implementation to much because the operation to textCaretaker and textOriginator are decoupled

main() {
  final TextOriginator textOriginator = TextOriginator();
  final TextCaretaker textCaretaker = TextCaretaker(originator: textOriginator);

  textOriginator.onChangeText(text: "This sentence");
  textCaretaker.addText();
  textOriginator.getText();

  textOriginator.onChangeText(text: "This sentence has some");
  textCaretaker.addText();
  textOriginator.getText();

  textCaretaker.undo();

  textOriginator.onChangeText(text: "This sentence has a lot");
  textCaretaker.addText();
  textOriginator.getText();

  textOriginator.onChangeText(text: "This sentence has a lot of great text!");
  textCaretaker.addText();
  textOriginator.getText();
}
