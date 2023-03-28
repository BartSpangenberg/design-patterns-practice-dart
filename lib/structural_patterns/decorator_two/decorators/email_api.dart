import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/contact.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/decorators/contact_form_decorator.dart';

class EmailAPI extends ContactFormDecorator {
  EmailAPI({required super.wrappee});

  @override
  makeAppointment({required Contact contact}) {
    super.makeAppointment(contact: contact);
    _sendEmail(contact: contact);
  }

  _sendEmail({required Contact contact}) {
    print("Send email to ${contact.email}");
  }
}
