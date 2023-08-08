// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

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
        throw UnknownEnumValueException(
          "Unknown value for 'EActivateGameOverlayToWebPageMode'. The value was: '$value'",
        );
    }
  }
}
