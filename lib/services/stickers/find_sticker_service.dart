import 'package:fifa_album_flutter/models/sticker_model.dart';

abstract class FindStickerService {
  Future<StickerModel> execute(String countryCode, String stickerNumber);
}
