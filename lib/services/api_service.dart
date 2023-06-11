import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:tsa_softwaredev/constants/api_consts.dart';
import 'package:tsa_softwaredev/models/chat_model.dart';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';

// Send Message fct
Future<List<ChatModel>> sendMessage(
    {required String message, required String modelId}) async {
  try {
    log("modelId $modelId");
    var response = await http.post(
      Uri.parse("$BASE_URL/completions"),
      headers: {
        'Authorization': 'Bearer $API_KEY',
        "Content-Type": "application/json"
      },
      body: jsonEncode(
        {
          "model": modelId,
          "prompt": '$prompt $message',
          "max_tokens": 300,
        },
      ),
    );

    // Map jsonResponse = jsonDecode(response.body);

    Map jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    if (jsonResponse['error'] != null) {
      // print("jsonResponse['error'] ${jsonResponse['error']["message"]}");
      throw HttpException(jsonResponse['error']["message"]);
    }
    List<ChatModel> chatList = [];
    if (jsonResponse["choices"].length > 0) {
      // log("jsonResponse[choices]text ${jsonResponse["choices"][0]["text"]}");
      chatList = List.generate(
        jsonResponse["choices"].length,
        (index) => ChatModel(
          msg: jsonResponse["choices"][index]["text"],
          chatIndex: 1,
        ),
      );
    }
    return chatList;
  } catch (error) {
    log("error $error");
    rethrow;
  }
}
