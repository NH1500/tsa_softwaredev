import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/local_storage.dart';
import 'constants/constants.dart';
import 'providers/chats_provider.dart';
import 'screens/chat_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await localStorage.init();
  localStorage.setStreak(4);
  localStorage.getStreak() != null
      ? localStorage.setStreak(localStorage.getStreak()! + 1)
      : localStorage.setStreak(1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        title: 'Flutter ChatBOT',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            appBarTheme: AppBarTheme(
              color: cardColor,
            )),
        home: const ChatScreen(),
      ),
    );
  }
}
