import 'package:fifa_album_flutter/core/ui/helpers/loader.dart';
import 'package:fifa_album_flutter/core/ui/helpers/messages.dart';
import 'package:fifa_album_flutter/pages/auth/login/login_page.dart';
import 'package:flutter/material.dart';

import './login_view.dart';

abstract class LoginViewImpl extends State<LoginPage>
    with Messages<LoginPage>, Loader<LoginPage>
    implements LoginView {
  @override
  void initState() {
    widget.loginPresenter.view = this;
    super.initState();
  }

  @override
  void error(String message) {
    hideLoader();
    showError(message);
  }

  @override
  void success() {
    hideLoader();
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }
}
