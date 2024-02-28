import '../interface/email_sender.dart';

class EmailSenderImpl extends EmailSender {
  @override
  void send(String email, String text) {
    print("Send email to: $email, text: $text");
  }
}
