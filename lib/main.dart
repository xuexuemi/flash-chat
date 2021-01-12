import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/chat.dart';
import 'package:flash_chat/screens/login.dart';
import 'package:flash_chat/screens/registration.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyC5wObNo6pfnrLPrEE7HrlXiIj-Osh1kb8",
      authDomain: "flash-chat-2f709.firebaseapp.com",
      projectId: "flash-chat-2f709",
      storageBucket: "flash-chat-2f709.appspot.com",
      messagingSenderId: "1085566176725",
      appId: "1:1085566176725:android:29ebcdce7199d96fb0815c",
    ),
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(color: Colors.black),
      //   ),
      // ),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
