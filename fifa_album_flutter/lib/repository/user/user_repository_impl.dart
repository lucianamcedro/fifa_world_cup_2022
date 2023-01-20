import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fifa_album_flutter/core/exceptions/repository_exception.dart';
import 'package:fifa_album_flutter/core/rest/custom_dio.dart';
import 'package:fifa_album_flutter/models/user_model.dart';

import './user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final CustomDio dio;

  UserRepositoryImpl({required this.dio});
  @override
  Future<UserModel> getMe() async {
    try {
      final result = await dio.auth().get('/api/me');
      return UserModel.fromMap(result.data);
    } on DioError catch (e, s) {
      log('Erro ao buscar os dados do usuário logado!',
          error: e, stackTrace: s);
      throw RepositoryException(
          message: 'Erro ao buscar os dados do usuário logado!');
    }
  }
}
