import 'package:flutter/material.dart';
import 'package:tsa_softwaredev/constants/const.dart';
import 'package:tsa_softwaredev/screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroudColor,
          appBarTheme: AppBarTheme(
            color: cardColor,
          )),
      home: const ChatScreen(),
    );
  }
}
