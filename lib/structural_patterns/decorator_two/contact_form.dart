import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/contact.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/make_appointment.dart';

// Component
class ContactForm implements MakeAppointment {
  String _email = "";
  String _contactType = "";

  String getContactType() => _contactType;

  onEditEmail({required String email}) {
    _email = email;
  }

  onEditContactMethod({required String type}) {
    _contactType = type;
  }

  @override
  makeAppointment({required Contact contact}) {
    print("Form data added to Contact.");
    contact.email = _email;
    contact.contactType = _contactType;
  }
}
