import 'dart:async';

class Validation {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@') && !email.contains(' ') && email.contains('.')) {
      sink.add(email);
    } else {
      sink.addError('Enater a valid email');
    }
  });
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 3) {
      sink.add(password);
    } else {
      sink.addError('Password must be at least 4 charachter');
    }
  });
}
