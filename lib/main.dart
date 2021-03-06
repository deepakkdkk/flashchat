import 'package:flutter/material.dart';
import 'package:flash_chat_application/screens/welcome_screen.dart';
import 'package:flash_chat_application/screens/registration_screen.dart';
import 'package:flash_chat_application/screens/chat_screen.dart';
import 'package:flash_chat_application/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/chat_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/login_screen.dart';

import 'screens/registration_screen.dart';

import 'screens/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
