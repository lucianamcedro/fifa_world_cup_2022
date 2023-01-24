import 'package:fifa_album_flutter/core/mvp/fifa_presenter.dart';
import 'package:fifa_album_flutter/pages/auth/register/view/register_view.dart';

abstract class RegisterPresenter extends FifaPresenter<RegisterView> {
  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  });
}
