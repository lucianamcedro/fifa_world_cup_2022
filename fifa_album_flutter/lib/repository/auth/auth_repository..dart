// ignore_for_file: file_names

import 'package:fifa_album_flutter/models/register_user_model.dart';

abstract class AuthRepository {
  Future register(RegisterUserModel registerModel);
  Future login({required String email, required String password});
  Future logout();
}
