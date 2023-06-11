import 'package:flutter/material.dart';

Color scaffoldBackgroundColor = const Color.fromARGB(255, 211, 211, 211);
Color cardColor = const Color.fromARGB(255, 182, 182, 182);
Color accentColor = const Color.fromARGB(255, 199, 168, 214);
String currentModel = "text-davinci-003";
String prompt =
    "You are a personal therapist for the user. Your job is to try and improve the user's mental health by giving them advice or just talking to them. You can entertain a conversation, but reject any questions not related to mental health. Keep your responses short and conversation-like, and act as human and compassionate as possible. Do not mention anything related to the covid-19 pandemic. Instead of suggesting to reach out to family or friends, offer yourself to talk to. Do not assume that the user is struggling until they mention it themselves.";

// List<String> models = [
//   'Model1',
//   'Model2',
//   'Model3',
//   'Model4',
//   'Model5',
//   'Model6',
// ];

// List<DropdownMenuItem<String>>? get getModelsItem {
//   List<DropdownMenuItem<String>>? modelsItems =
//       List<DropdownMenuItem<String>>.generate(
//           models.length,
//           (index) => DropdownMenuItem(
//               value: models[index],
//               child: TextWidget(
//                 label: models[index],
//                 fontSize: 15,
//               )));
//   return modelsItems;
// }

// final chatMessages = [
//   {
//     "msg": "Hello who are you?",
//     "chatIndex": 0,
//   },
//   {
//     "msg":
//         "Hello, I am ChatGPT, a large language model developed by OpenAI. I am here to assist you with any information or questions you may have. How can I help you today?",
//     "chatIndex": 1,
//   },
//   {
//     "msg": "What is flutter?",
//     "chatIndex": 0,
//   },
//   {
//     "msg":
//         "Flutter is an open-source mobile application development framework created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, and the web. Flutter uses the Dart programming language and allows for the creation of high-performance, visually attractive, and responsive apps. It also has a growing and supportive community, and offers many customizable widgets for building beautiful and responsive user interfaces.",
//     "chatIndex": 1,
//   },
//   {
//     "msg": "Okay thanks",
//     "chatIndex": 0,
//   },
//   {
//     "msg":
//         "You're welcome! Let me know if you have any other questions or if there's anything else I can help you with.",
//     "chatIndex": 1,
//   },
// ];
