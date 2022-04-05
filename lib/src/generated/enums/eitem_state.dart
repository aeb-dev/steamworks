// ignore_for_file: public_member_api_docs
typedef EItemState = int;

class EItemStateEnum {
  static const int none = 0;
  static const int subscribed = 1;
  static const int legacyItem = 2;
  static const int installed = 4;
  static const int needsUpdate = 8;
  static const int downloading = 16;
  static const int downloadPending = 32;
}
