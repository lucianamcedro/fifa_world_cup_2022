import 'package:fifa_album_flutter/models/user_model.dart';

abstract class HomeView {
  void updateUser(UserModel userModel);

  void error(String message);

  void showLoader();

  void logoutSuccess();
}
