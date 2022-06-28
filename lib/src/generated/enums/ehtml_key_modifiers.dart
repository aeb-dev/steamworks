// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EHtmlKeyModifiersAliasDart = int;
typedef EHtmlKeyModifiersAliasC = Int32;

enum EHtmlKeyModifiers {
  none(0),
  altDown(1),
  ctrlDown(2),
  shiftDown(4),
  ;

  final int value;

  const EHtmlKeyModifiers(this.value);

  factory EHtmlKeyModifiers.fromValue(int value) {
    switch (value) {
      case 0:
        return EHtmlKeyModifiers.none;
      case 1:
        return EHtmlKeyModifiers.altDown;
      case 2:
        return EHtmlKeyModifiers.ctrlDown;
      case 4:
        return EHtmlKeyModifiers.shiftDown;
      default:
        throw "Unknown value for 'EHtmlKeyModifiers'. The value was: '$value'";
    }
  }
}
