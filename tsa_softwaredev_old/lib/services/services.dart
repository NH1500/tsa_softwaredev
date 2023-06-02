import 'package:flutter/material.dart';
import 'package:tsa_softwaredev/widgets/dropdown_widget.dart';

import '../constants/const.dart';
import '../widgets/text_widget.dart';

class Services {
  // ignore: non_constant_identifier_names
  static Future<void> ShowModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        backgroundColor: scaffoldBackgroudColor,
        context: context,
        builder: (context) {
          return const Padding(
            padding: EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TextWidget(
                    label: "Chosen Model:",
                    fontSize: 16,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: ModelsDropDownWidget(),
                ),
              ],
            ),
          );
        });
  }
}
