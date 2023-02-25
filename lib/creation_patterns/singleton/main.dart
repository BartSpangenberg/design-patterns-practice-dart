import 'package:design_patterns_practice_dart/creation_patterns/singleton/government_singleton.dart';

main() {
  // !This means for many applications we don't need service locators
  // You can simply access the singleton by "creating a new instance", which it doesn't really do, only the first time
  final GovernmentSingleton government = GovernmentSingleton();

  government.showCandidates();
  government.vote();
  government.vote();
  government.vote();

  final GovernmentSingleton governmentTwo = GovernmentSingleton();
  governmentTwo.getAmountOfVotes();
}
