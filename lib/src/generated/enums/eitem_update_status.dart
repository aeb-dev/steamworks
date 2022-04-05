// ignore_for_file: public_member_api_docs
typedef EItemUpdateStatus = int;

class EItemUpdateStatusEnum {
  static const int invalid = 0;
  static const int preparingConfig = 1;
  static const int preparingContent = 2;
  static const int uploadingContent = 3;
  static const int uploadingPreviewFile = 4;
  static const int committingChanges = 5;
}
