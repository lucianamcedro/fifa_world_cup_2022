import 'package:fifa_album_flutter/core/mvp/fifa_presenter.dart';
import 'package:fifa_album_flutter/pages/home/view/home_view.dart';

abstract class HomePresenter extends FifaPresenter<HomeView> {
  Future<void> getUserData();
  Future<void> logout();
}
