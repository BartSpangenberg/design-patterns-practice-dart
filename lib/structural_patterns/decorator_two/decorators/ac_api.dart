import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/contact.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/contact_form.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/decorators/contact_form_decorator.dart';

class AcAPI extends ContactFormDecorator {
  AcAPI({required super.wrappee});

  @override
  makeAppointment({required Contact contact}) {
    super.makeAppointment(contact: contact);
    _addToActiveCampaign(contact: contact);
  }

  _addToActiveCampaign({required Contact contact}) {
    print(
        "${contact.email} added to Active Campaign. Contacted by: ${contact.contactType}");
  }
}
