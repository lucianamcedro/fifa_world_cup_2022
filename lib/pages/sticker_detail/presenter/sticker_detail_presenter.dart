import 'package:fifa_album_flutter/core/mvp/fifa_presenter.dart';
import 'package:fifa_album_flutter/models/user_sticker_model.dart';
import 'package:fifa_album_flutter/pages/sticker_detail/view/sticker_detail_view.dart';

abstract class StickerDetailPresenter extends FifaPresenter<StickerDetailView> {
  Future<void> load({
    required String countryCode,
    required String stickerNumber,
    required String countryName,
    UserStickerModel? stickerUser,
  });

  void incrementAmount();
  void decrementAmount();

  Future<void> saveSticker();
  Future<void> deleteSticker();
}
