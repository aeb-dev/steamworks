// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EActivateGameOverlayToWebPageModeAliasDart = int;
typedef EActivateGameOverlayToWebPageModeAliasC = Int32;

enum EActivateGameOverlayToWebPageMode {
  default_(0),
  modal(1),
  ;

  final int value;

  const EActivateGameOverlayToWebPageMode(this.value);

  factory EActivateGameOverlayToWebPageMode.fromValue(int value) {
    switch (value) {
      case 0:
        return EActivateGameOverlayToWebPageMode.default_;
      case 1:
        return EActivateGameOverlayToWebPageMode.modal;
      default:
        throw "Unknown value for 'EActivateGameOverlayToWebPageMode'. The value was: '$value'";
    }
  }
}
