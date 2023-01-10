import 'package:fifa_album_flutter/core/mvp/fifa_presenter.dart';
import 'package:fifa_album_flutter/pages/auth/login/login_page.dart';
import 'package:fifa_album_flutter/pages/auth/login/view/login_view.dart';

abstract class LoginPresenter extends FifaPresenter<LoginView> {
  Future<void> login(String email, String password);
}
