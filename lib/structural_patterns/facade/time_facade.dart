import 'package:design_patterns_practice_dart/structural_patterns/facade/complex_time_api.dart';
import 'package:design_patterns_practice_dart/structural_patterns/facade/framework_time_api.dart';

class TimeFacade {
  final ComplexTimeAPI _complexTimeAPI = ComplexTimeAPI();
  final FrameWorkTimeAPI _frameWorkTimeAPI = FrameWorkTimeAPI();

  DateTime getTime() {
    return _frameWorkTimeAPI.generateTimeInHolland();
  }

  DateTime getTimeFromMars() {
    return _complexTimeAPI.getTimeFromMars();
  }
}
