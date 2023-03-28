import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/contact.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/contact_form.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/decorators/ac_api.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/decorators/calendar_api.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/decorators/contact_form_decorator.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator_two/decorators/email_api.dart';

main() {
  final ContactForm contactForm = ContactForm();
  contactForm.onEditEmail(email: "eva@nike.org");
  contactForm.onEditContactMethod(type: "calendar");

  ContactFormDecorator contactFormDecorator = ContactFormDecorator(
    wrappee: contactForm,
  );

  final Contact contact = Contact();
  final String contactType = contactForm.getContactType();

  if (contactType == "email") {
    contactFormDecorator = EmailAPI(wrappee: contactFormDecorator);
  } else if (contactType == "calendar") {
    print("Show Calendar pop up.");
    contactFormDecorator = CalendarAPI(wrappee: contactFormDecorator)
      ..onChangeAppointmentTime(time: "16:25");
  }

  contactFormDecorator = AcAPI(wrappee: contactFormDecorator);
  contactFormDecorator.makeAppointment(contact: contact);
}
