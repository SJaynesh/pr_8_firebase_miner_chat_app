import 'package:code/models/password_show_hide_model.dart';
import 'package:get/get.dart';

class PasswordShowHideController extends GetxController {
  PasswordShowHideModel passwordShowHideModel =
      PasswordShowHideModel(isVisibility: false);

  changeVisibility() {
    passwordShowHideModel.isVisibility = !passwordShowHideModel.isVisibility;
    update();
  }
}
