import 'package:fifa_album_flutter/models/groups_stickers.dart';
import 'package:fifa_album_flutter/models/register_sticker_model.dart';
import 'package:fifa_album_flutter/models/sticker_model.dart';

abstract class StickersRepository {
  Future<List<GroupsStickers>> getMyAlbum();
  Future<StickerModel?> findStickerByCode(
      String stickerCode, String stickerNumber);
  Future<StickerModel> create(RegisterStickerModel registerStickerModel);

  Future<void> registerUserSticker(int stickerId, int amount);
  Future<void> updateUserSticker(int stickerId, int amount);
}
