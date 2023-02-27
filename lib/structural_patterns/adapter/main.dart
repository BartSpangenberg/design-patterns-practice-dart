import 'package:design_patterns_practice_dart/structural_patterns/adapter/client_langauge.dart';
import 'package:design_patterns_practice_dart/structural_patterns/adapter/language_adapter.dart';
import 'package:design_patterns_practice_dart/structural_patterns/adapter/third_party_language.dart';

main() {
  final ClientLanguage clientLanguage = ClientLanguage();
  clientLanguage.sayHi();

  // We have 3th party library that we want to use to say Hi in another langauge
  final ThirdPartyLanguage thirdPartyLanguage = ThirdPartyLanguage();
  final String message = thirdPartyLanguage.sayBye();
  print("message");
  print("That doesn't make sense!");

  // However interface is not compatible.
  // We use the adapter
  final LanguageAdapter languageAdapter = LanguageAdapter(
    thirdPartyLanguage: thirdPartyLanguage,
  );

  languageAdapter.sayHi();
}
