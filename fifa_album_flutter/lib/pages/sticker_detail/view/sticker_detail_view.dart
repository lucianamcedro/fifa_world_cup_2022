abstract class StickerDetailView {
  void pageLoaded(
    bool hasSticker,
    String countryCode,
    String stickerNumber,
    String countryName,
    int amount,
  );

  void updateAmount(int i);

  void showLoader();

  void saveSuccess();

  void error(String s);
}
