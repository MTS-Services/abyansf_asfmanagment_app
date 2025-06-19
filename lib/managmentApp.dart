import 'package:abyansf_asfmanagment_app/view/auth/loginScreen.dart';
import 'package:flutter/material.dart';

class Managmentapp extends StatelessWidget {
  const Managmentapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
