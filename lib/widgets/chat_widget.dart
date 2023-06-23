import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsa_softwaredev/constants/constants.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key? key,
    required this.msg,
    required this.chatIndex,
    this.shouldAnimate = false,
  }) : super(key: key);

  final String msg;
  final int chatIndex;
  final bool shouldAnimate;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: chatIndex == 0 ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: chatIndex == 0 ? accentColor : Colors.grey[300],
        ),
        child: DefaultTextStyle(
          style: GoogleFonts.quicksand(
            color: chatIndex == 0 ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          child: shouldAnimate
              ? AnimatedTextKit(
                  isRepeatingAnimation: false,
                  repeatForever: false,
                  displayFullTextOnTap: true,
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(
                      msg.trim(),
                    ),
                  ],
                )
              : Text(
                  msg.trim(),
                ),
        ),
      ),
    );
  }
}
