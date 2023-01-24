import 'dart:developer';

import 'package:fifa_album_flutter/models/register_user_model.dart';
import 'package:fifa_album_flutter/pages/auth/register/view/register_view.dart';
import 'package:fifa_album_flutter/repository/auth/auth_repository..dart';

import './register_presenter.dart';

class RegisterPresenterImpl implements RegisterPresenter {
  final AuthRepository authRepository;
  late final RegisterView _view;

  RegisterPresenterImpl({required this.authRepository});

  @override
  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    final registerUserModel = RegisterUserModel(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
    );

    try {
      await authRepository.register(registerUserModel);
      _view.registerSucess();
    } catch (e, s) {
      log('Erro ao cadastrar o usuário', error: e, stackTrace: s);
      _view.registerErro();
    }
  }

  @override
  set view(RegisterView view) => _view = view;
}
