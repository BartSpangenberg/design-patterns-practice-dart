import 'package:design_patterns_practice_dart/structural_patterns/decorator/celebrator.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator/challenge.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator/challenge_completor.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator/cheat_checker.dart';

const String userId = "userId12435";
final List<String> cheatingUsers = ["userId12435", "userId09872"];

main() {
  final Challenge challenge = Challenge(id: "challengeId12435", points: 8);

  final ChallengeCompletor challengecompletor = ChallengeCompletor();

  final CheatChecker cheatChecker = CheatChecker(decorator: challengecompletor);
  cheatChecker.completeChallenge(challenge: challenge);
  challengecompletor.completeChallenge(challenge: challenge);

  final Celebrator celebrator = Celebrator(decorator: cheatChecker);
  celebrator.completeChallenge(challenge: challenge);
}
