import 'package:tsa_softwaredev/models/models_model.dart';
import 'package:flutter/cupertino.dart';

class ModelsProvider with ChangeNotifier {
  // String currentModel = "text-davinci-003";
  String currentModel = "gpt-3.5-turbo-0301";

  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel;
    notifyListeners();
  }

  List<ModelsModel> modelsList = [];

  List<ModelsModel> get getModelsList {
    return modelsList;
  }
}
