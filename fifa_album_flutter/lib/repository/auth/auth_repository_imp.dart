import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fifa_album_flutter/core/exceptions/repository_exception.dart';
import 'package:fifa_album_flutter/core/rest/custom_dio.dart';
import 'package:fifa_album_flutter/models/register_user_model.dart';
import 'package:fifa_album_flutter/repository/auth/auth_repository..dart';

class AuthRepositoryImp implements AuthRepository {
  final CustomDio dio;

  AuthRepositoryImp({required this.dio});

  @override
  Future<void> register(RegisterUserModel registerModel) async {
    try {
      await dio.unAuth().post(
            '/api/register',
            data: registerModel.toMap(),
          );
    } on DioError catch (e, s) {
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao registrar usuário');
    }
  }

  @override
  Future<String> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }
}
