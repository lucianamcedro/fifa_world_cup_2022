import 'package:fifa_album_flutter/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getMe();
}
