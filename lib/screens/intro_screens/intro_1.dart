import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsa_softwaredev/constants/constants.dart';
import 'package:tsa_softwaredev/services/assets_manager.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: accentColor,
      child: Container(
        alignment: const Alignment(0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        style: GoogleFonts.quicksand(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                        text:
                            "Welcome to *title*, an AI based Chatbot specialized for improving your Mental Health"),
                  ],
                ),
              ),
            ),
            Image.asset(AssetsManager.openaiLogo),
          ],
        ),
      ),
    );
  }
}
