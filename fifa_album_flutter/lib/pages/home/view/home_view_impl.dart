import 'package:fifa_album_flutter/core/ui/helpers/loader.dart';
import 'package:fifa_album_flutter/core/ui/helpers/messages.dart';
import 'package:fifa_album_flutter/models/user_model.dart';
import 'package:fifa_album_flutter/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import './home_view.dart';

abstract class HomeViewImpl extends State<HomePage>
    with Loader<HomePage>, Messages<HomePage>
    implements HomeView {
  UserModel? user;

  @override
  void initState() {
    widget.presenter.view = this;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.presenter.getUserData();
    });
    super.initState();
  }

  @override
  void error(String message) {
    hideLoader();
    showError(message);
  }

  @override
  void logoutSuccess() {
    hideLoader();
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/auth/login', (route) => false);
  }

  @override
  void updateUser(UserModel user) {
    setState(() {
      hideLoader();
      this.user = user;
    });
  }
}
