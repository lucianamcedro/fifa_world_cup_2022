import 'package:fifa_album_flutter/core/mvp/fifa_presenter.dart';
import 'package:fifa_album_flutter/pages/my_stickers/view/my_stickers_view.dart';

abstract class MyStickersPresenter extends FifaPresenter<MyStickersView> {
  Future<void> getMyAlbum();
  Future<void> statusFilter(String status);
  void countryFilter(List<String>? countries);

  void refresh();
}
