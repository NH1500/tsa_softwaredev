// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tsa_softwaredev/constants/const.dart';

class ModelsDropDownWidget extends StatefulWidget {
  const ModelsDropDownWidget({super.key});

  @override
  State<ModelsDropDownWidget> createState() => Models_DropDownWidgetState();
}

class Models_DropDownWidgetState extends State<ModelsDropDownWidget> {
  String currentModel = "Model1";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: scaffoldBackgroudColor,
      iconEnabledColor: Colors.white,
      items: getModelsItem,
      value: currentModel,
      onChanged: (value) {
        setState(
          () {
            currentModel = value.toString();
          },
        );
      },
    );
  }
}
