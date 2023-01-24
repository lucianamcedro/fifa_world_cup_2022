import 'package:fifa_album_flutter/core/ui/helpers/loader.dart';
import 'package:fifa_album_flutter/core/ui/helpers/messages.dart';
import 'package:fifa_album_flutter/pages/sticker_detail/sticker_detail_page.dart';
import 'package:flutter/material.dart';

import './sticker_detail_view.dart';

abstract class StickerDetailViewImpl extends State<StickerDetailPage>
    with Messages<StickerDetailPage>, Loader<StickerDetailPage>
    implements StickerDetailView {
  bool hasSticker = true;
  String countryCode = '';
  String stickerNumber = '';
  String countryName = '';
  int amount = 0;

  @override
  void initState() {
    widget.presenter.view = this;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showLoader();
      var arguments = ModalRoute.of(context)?.settings.arguments;

      if (arguments != null && arguments is Map<String, dynamic>) {
        widget.presenter.load(
          countryCode: arguments['countryCode'],
          stickerNumber: arguments['stickerNumber'],
          countryName: arguments['countryName'],
          stickerUser: arguments['stickerUser'],
        );
      } else {
        hideLoader();
        Navigator.of(context).pop();
        showError('Não foi possível carregar a figurinha');
      }
    });
    super.initState();
  }

  @override
  void pageLoaded(
    bool hasSticker,
    String countryCode,
    String stickerNumber,
    String countryName,
    int amount,
  ) {
    hideLoader();
    setState(() {
      this.hasSticker = hasSticker;
      this.countryCode = countryCode;
      this.stickerNumber = stickerNumber;
      this.countryName = countryName;
      this.amount = amount;
    });
  }

  @override
  void updateAmount(int amount) {
    setState(() {
      this.amount = amount;
    });
  }

  @override
  void saveSuccess() {
    hideLoader();
    Navigator.of(context).pop();
  }

  @override
  void error(String message) {
    hideLoader();
    showError(message);
  }
}
