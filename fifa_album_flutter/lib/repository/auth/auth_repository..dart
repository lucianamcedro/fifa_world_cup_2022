// ignore_for_file: file_names

import 'package:fifa_album_flutter/models/register_user_model.dart';

abstract class AuthRepository {
  Future<void> register(RegisterUserModel registerUserModel);
  Future<String> login({required String email, required String password});
  Future<void> logout();
}
