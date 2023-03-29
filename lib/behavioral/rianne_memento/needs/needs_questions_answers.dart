class Question {
  final String questionId;
  final String question;
  final List<String> possisbleAnswers;

  Question({
    required this.questionId,
    required this.question,
    required this.possisbleAnswers,
  });
}

final List<Question> questions = [
  Question(
    questionId: "1",
    question: "What is most important for you?",
    possisbleAnswers: ["health", "culture", "time"],
  ),
  Question(
    questionId: "2",
    question: "How much time do you have a month?",
    possisbleAnswers: ["30 min", "3 hours", "30 hours"],
  ),
  Question(
    questionId: "3",
    question: "What feature do you like the most?",
    possisbleAnswers: ["newsfeed", "leaderboards", "charity", "recipes"],
  ),
];

class Answer {
  final String questionId;
  final String answer;

  Answer({
    required this.questionId,
    required this.answer,
  });
}
