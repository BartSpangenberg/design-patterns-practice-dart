import 'package:design_patterns_practice_dart/structural_patterns/adapter/client_langauge.dart';
import 'package:design_patterns_practice_dart/structural_patterns/adapter/third_party_language.dart';

// !Step 1: Extend client code (interheritance)
class LanguageAdapter extends ClientLanguage {
  // !Step 2: Make an instance variable out of the third party library
  late ThirdPartyLanguage _thirdPartyLanguage;

  LanguageAdapter({required ThirdPartyLanguage thirdPartyLanguage}) {
    _thirdPartyLanguage = thirdPartyLanguage;
  }

  // !Step 3: Adapt the 3th party code to the client code
  // -- Can be done in various ways
  // -- It also doesn't neccessarily have to be a 3th party library in the first place, can be 2 inerfaces that don't work well together
  @override
  void sayHi() {
    // As an example I'm  using the alphabet variable from the clientlanguage (received through inheritance)
    _thirdPartyLanguage.alphabet = alphabet;

    print(_thirdPartyLanguage.sayBye());
  }
}
