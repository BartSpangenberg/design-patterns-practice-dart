// // The Rianne class is in a way a RianneCaretaker
// // --> In the future we might create a seperate class out of the Caretaker and aggregate it inside the Rianne class
// import 'package:design_patterns_practice_dart/behavioral/memento/needs/needs_questions_answers.dart';
// import 'package:design_patterns_practice_dart/behavioral/memento/rianne/rianne_state.dart';
// import 'package:design_patterns_practice_dart/behavioral/memento/rianne_memory_memento.dart';
// import 'package:design_patterns_practice_dart/behavioral/memento/rianne_memory_originator.dart';

// class Rianne {
//   final RianneState rianneState = RianneState();

//   // -----------------------------------------------------
//   final List<RianneMemoryMemento> _answerHistory = [];
//   final RianneMemoryOriginator _originator = RianneMemoryOriginator(
//     state: RianneState(),
//   );
//   // -----------------------------------------------------

//   askQuestion() {
//     final Question question = questions[rianneState.questionIndex];
//     print(question.question);
//     print('Pick the answer that suits you best ${question.possisbleAnswers}');
//   }

//   onAnswerQuestion({required String response}) {
//     final Question question = questions[rianneState.questionIndex];
//     final Answer answer = Answer(
//       questionId: question.questionId,
//       answer: response,
//     );
//     rianneState.answers.add(answer);

//     // -------------------------------------------------------

//     final RianneMemoryMemento newMemento = _originator.save();
//     _answerHistory.add(newMemento);
//   }

//   onUndo() {
//     final RianneMemoryMemento memento = _answerHistory.removeLast();
//     _originator.restore(memento: memento);
//   }
// }
