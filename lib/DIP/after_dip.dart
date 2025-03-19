import 'package:flutter/material.dart';

abstract class IMessage {
  void sendEmail(String title, String content);
}

class Email {
  final IMessage messageService;
  Email(this.messageService);

  void sendEmail(String title, String content) =>
      messageService.sendEmail(title, content);
}

class GmailService implements IMessage {
  @override
  void sendEmail(String title, String content) {
    debugPrint('Send By Gmail');
  }
}

class OutllokService implements IMessage {
  @override
  void sendEmail(String title, String content) {
    debugPrint('Send By Outlook');
  }
}

void main() {
  // final emailService = Email(OutllokService());
  final emailService = Email(GmailService());
  emailService.sendEmail('title', 'hello');
}
