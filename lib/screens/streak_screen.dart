// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tsa_softwaredev/constants/constants.dart';
import 'package:tsa_softwaredev/services/local_storage.dart';

import '../services/assets_manager.dart';

class StreakScreen extends StatefulWidget {
  const StreakScreen({super.key});

  @override
  _StreakScreenState createState() => _StreakScreenState();
}

class _StreakScreenState extends State<StreakScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Streak'), backgroundColor: accentColor),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(localStorage.getStreak().toString(),
                    textAlign: TextAlign.center, textScaleFactor: 8),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(AssetsManager.fire),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                "You have a streak of ${localStorage.getStreak().toString()} days of checking in, keep it up!"),
          ],
        ),
      ),
    );
  }
}
