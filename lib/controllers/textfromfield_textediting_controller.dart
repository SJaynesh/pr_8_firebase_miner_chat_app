import 'package:code/models/textfromfield_textediting_controller_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextFromFieldTextEditingController extends GetxController {
  TextFromFieldTextEditingControllerModel textFromFieldTextEditingControllerModel =
      TextFromFieldTextEditingControllerModel(
          userNameController: TextEditingController(),
          passwordController: TextEditingController());

  clearTextEditingController() {
    textFromFieldTextEditingControllerModel.userNameController.clear();
    update();
  }
}
