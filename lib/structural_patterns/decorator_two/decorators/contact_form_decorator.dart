import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/contact.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/make_appointment.dart';

class ContactFormDecorator implements MakeAppointment {
  final MakeAppointment _wrappee;

  ContactFormDecorator({required MakeAppointment wrappee}) : _wrappee = wrappee;

  @override
  makeAppointment({required Contact contact}) {
    _wrappee.makeAppointment(contact: contact);
  }
}
