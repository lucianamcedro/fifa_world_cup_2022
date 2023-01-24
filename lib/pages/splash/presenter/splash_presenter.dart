import 'package:fifa_album_flutter/core/mvp/fifa_presenter.dart';

abstract class SplashPresenter extends FifaPresenter {
  Future<void> checkLogin();
}
