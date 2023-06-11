// ignore: file_names

// ignore_for_file: sdk_version_since

//import 'package:tsa_softwaredev/constants/constants.dart';
import 'package:tsa_softwaredev/providers/chats_provider.dart';

class Memory {
  List<String> messages = [];
  String concatenate() {
    ChatProvider chatProvider = ChatProvider();
    List chatList = chatProvider.getChatList;
    messages.clear();

    for (var i = 0; i < chatList.length; i++) {
      /*chatList[i].chatIndex == 0
          ? messages.add(chatList[i].msg)
          : messages.add(chatList[i].msg);*/

      messages.add(chatProvider.getChatList.first.msg);
    }

    return messages.toString();
  }
}
