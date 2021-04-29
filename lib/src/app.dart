import 'package:flutter/material.dart';
import 'screens/loginScreen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log ME In',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
