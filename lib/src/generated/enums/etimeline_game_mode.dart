// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ETimelineGameModeAliasDart = int;
typedef ETimelineGameModeAliasC = Int32;

enum ETimelineGameMode {
  invalid(0),
  playing(1),
  staging(2),
  menus(3),
  max(4),
  ;

  final int value;

  const ETimelineGameMode(this.value);

  factory ETimelineGameMode.fromValue(int value) {
    switch (value) {
      case 0:
        return ETimelineGameMode.invalid;
      case 1:
        return ETimelineGameMode.playing;
      case 2:
        return ETimelineGameMode.staging;
      case 3:
        return ETimelineGameMode.menus;
      case 4:
        return ETimelineGameMode.max;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ETimelineGameMode'. The value was: '$value'",
        );
    }
  }
}
