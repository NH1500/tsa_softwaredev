// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';

import '../models/chat_model.dart';
import '../services/api_service.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> chatList = [];
  List<ChatModel> get getChatList {
    return chatList;
  }

  void addUserMessage({required String msg}) {
    chatList.add(ChatModel(msg: msg, chatIndex: 0));
    notifyListeners();
  }

  Future<void> sendMessageAndGetAnswers(
      {required String msg,
      required String chosenModelId,
      required BuildContext context}) async {
    chatList.addAll(await sendMessage(
        message: msg, modelId: chosenModelId, context: context));
  }

  @override
  notifyListeners();
}
