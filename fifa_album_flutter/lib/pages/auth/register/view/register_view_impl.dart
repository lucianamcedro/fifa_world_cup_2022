import 'package:fifa_album_flutter/core/ui/helpers/loader.dart';
import 'package:fifa_album_flutter/core/ui/helpers/messages.dart';
import 'package:fifa_album_flutter/pages/auth/register/register_page.dart';
import 'package:fifa_album_flutter/pages/auth/register/view/register_view.dart';
import 'package:flutter/material.dart';

abstract class RegisterViewImpl extends State<RegisterPage>
    with Messages<RegisterPage>, Loader<RegisterPage>
    implements RegisterView {
  @override
  void initState() {
    widget.registerPresenter.view = this;
    super.initState();
  }

  @override
  void registerErro([String? message]) {
    hideLoader();
    showError(message ?? 'Erro ao registrar usuário');
  }

  @override
  void registerSucess([String? message]) {
    hideLoader();
    showSucess(message ?? 'Usuário cadastrado com sucesso');
    Navigator.of(context).pop();
  }
}
