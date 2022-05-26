import 'package:flutter/material.dart';
import 'pages/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conn Exion',
      theme: ThemeData(primarySwatch: Colors.amber, fontFamily: 'Montserrat'),
      home: const Material(child: SignInPage()),
    );
  }
}
