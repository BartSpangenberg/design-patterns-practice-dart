// Might appear weird at first because Dart does magic behind the scenes.

class GovernmentSingleton {
  // *This is the actual object that we will use, which will be used in the code
  // -- the part _government = GovernmentSingleton._internal() makes sure that it's only
  static final GovernmentSingleton _government =
      GovernmentSingleton._internal();

  int _timesVoted = 0;

  // *Because it's a factory it can return a Class
  // In Dart, the factory keyword is used to declare a factory constructor.
  // A factory constructor is a special type of constructor that is responsible for creating and returning an instance of a class.
  // When you use a private constructor and a factory method to implement the singleton pattern in Dart, there is some behind-the-scenes work that happens to ensure that only one instance of the class is created.
  // In particular, the factory method checks if the private static field _singleton is null or not, and returns the existing instance if it's not null, or creates a new instance and assigns it to _singleton if it is null. This logic is handled implicitly by the Dart runtime, based on the state of the _singleton field at runtime.
  // This approach has the advantage of being simple and concise, while still providing the benefits of the singleton pattern. However, it does rely on some internal mechanisms of the Dart runtime to ensure that the singleton instance is created and managed correctly.
  factory GovernmentSingleton() {
    // !This line of code returns the existing _singleton instance if it's not null, or creates a new instance and assigns it to _singleton if it is null.
    return _government;
  }

  GovernmentSingleton._internal();

  // *This is how you create a private constructor in Dart (bit weird)
  // GovernmentSingleton._();

  void showCandidates() {
    print("Ten Hag, Ronaldo, Rashford");
  }

  void vote() {
    _timesVoted++;
  }

  void getAmountOfVotes() {
    print("Times voted: $_timesVoted");
  }
}
