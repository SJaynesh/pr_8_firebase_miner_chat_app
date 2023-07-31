import 'package:flutter/material.dart';

class TextFromFieldTextEditingControllerModel {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextFromFieldTextEditingControllerModel({
    required this.userNameController,
    required this.passwordController,
  });
}
