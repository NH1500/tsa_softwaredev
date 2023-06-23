import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tsa_softwaredev/screens/chat_screen.dart';
import 'screens/intro_screen.dart';
import 'services/local_storage.dart';
import 'constants/constants.dart';
import 'providers/chats_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await localStorage.init();
  if (localStorage.getStreak() != null) {
    if (!await localStorage.hasUsedToday()) {
      localStorage.setStreak(localStorage.getStreak()! + 1);
    }
  } else {
    localStorage.setStreak(1);
  }
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool hasUsedApp = prefs.getBool('hasUsed') ?? false;
  runApp(MyApp(hasUsedApp));
}

class MyApp extends StatelessWidget {
  final bool hasUsedApp;

  const MyApp(this.hasUsedApp, {super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'TSA Software Development 2023',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            appBarTheme: AppBarTheme(
              color: cardColor,
            )),
        // home: const ChatScreen(),
        home: hasUsedApp ? const ChatScreen() : const IntroScreen(),
      ),
    );
  }
}
