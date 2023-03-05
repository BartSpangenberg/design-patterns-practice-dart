import 'package:design_patterns_practice_dart/structural_patterns/facade/time_facade.dart';

main() {
  final TimeFacade timeFacade = TimeFacade();

  timeFacade.getTime();
  timeFacade.getTimeFromMars();
}
