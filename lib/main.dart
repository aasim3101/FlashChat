import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyDwDuPGtH84WPJqCoXli3eSLFSRUuMZ244',
        appId: 'AIzaSyDwDuPGtH84WPJqCoXli3eSLFSRUuMZ244',
        messagingSenderId: '327289030793',
        projectId: 'flash-chat-e4fd8',
        authDomain: 'flash-chat-e4fd8.firebaseapp.com',
        databaseURL: 'https://flash-chat-e4fd8.firebaseio.com',
        storageBucket: 'flash-chat-e4fd8.appspot.com',
        //measurementId: 'G-F79DJ0VFGS',
      ),
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
