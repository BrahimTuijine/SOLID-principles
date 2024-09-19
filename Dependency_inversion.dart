//** BAD */

// class EmailService {
//   final _gmail = Gmail();
//   final _outlook = Outlook();

//   void sendEmailByGmail() => _gmail.sendEmail();

//   void sendEmailByOutlook() => _outlook.sendEmail();
// }

// class Gmail {
//   void sendEmail() {
//     print('sended email by gmail');
//   }
// }

// class Outlook {
//   void sendEmail() {
//     print('sended email by Outlook');
//   }
// }

//** GOOD */

abstract class EmailService {
  void sendEmail();
}

class Gmail implements EmailService {
  @override
  void sendEmail() {
    print('sended email by gmail');
  }
}

class Outlook implements EmailService {
  @override
  void sendEmail() {
    print('sended email by Outlook');
  }
}

class Email implements EmailService {
  final EmailService emailService;

  Email({required this.emailService});

  @override
  void sendEmail() => emailService.sendEmail();
}

void main() {
  final email = Email(emailService: Gmail());
  email.sendEmail();
}
