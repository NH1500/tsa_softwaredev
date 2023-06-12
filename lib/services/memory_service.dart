// ignore: file_names

// ignore_for_file: sdk_version_since

//import 'package:tsa_softwaredev/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tsa_softwaredev/providers/chats_provider.dart';

class Memory {
  List<String> messages = [];

  Memory(context);
  String concatenate(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context, listen: false);
    List chatList = chatProvider.getChatList;
    messages.clear();

    for (var i = 0; i < chatList.length; i++) {
      //messages.add(chatList[i].msg);
      chatList[i].chatIndex == 0
          ? messages.add(chatList[i].msg)
          : messages.add("AI: ${chatList[i].msg}");

      //messages.add(chatProvider.getChatList.first.msg);
    }

    return messages.toString();
  }
}
