// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EDurationControlProgressAliasDart = int;
typedef EDurationControlProgressAliasC = Int32;

enum EDurationControlProgress {
  progressFull(0),
  progressHalf(1),
  progressNone(2),
  exitSoon3h(3),
  exitSoon5h(4),
  exitSoonNight(5),
  ;

  final int value;

  const EDurationControlProgress(this.value);

  factory EDurationControlProgress.fromValue(int value) {
    switch (value) {
      case 0:
        return EDurationControlProgress.progressFull;
      case 1:
        return EDurationControlProgress.progressHalf;
      case 2:
        return EDurationControlProgress.progressNone;
      case 3:
        return EDurationControlProgress.exitSoon3h;
      case 4:
        return EDurationControlProgress.exitSoon5h;
      case 5:
        return EDurationControlProgress.exitSoonNight;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EDurationControlProgress'. The value was: '$value'",
        );
    }
  }
}
