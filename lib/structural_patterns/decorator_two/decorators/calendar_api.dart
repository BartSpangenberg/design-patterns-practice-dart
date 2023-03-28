import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/contact.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/decorators/contact_form_decorator.dart';

class CalendarAPI extends ContactFormDecorator {
  CalendarAPI({required super.wrappee});

  String _time = "12:00";

  onChangeAppointmentTime({required String time}) {
    _time = time;
  }

  @override
  makeAppointment({required Contact contact}) {
    super.makeAppointment(contact: contact);
    _scheduleInCalendar(contact: contact);
  }

  void _scheduleInCalendar({required Contact contact}) {
    print("Appointment with ${contact.email} scheduled at $_time");
  }
}
