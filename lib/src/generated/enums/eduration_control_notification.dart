// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EDurationControlNotificationAliasDart = int;
typedef EDurationControlNotificationAliasC = Int32;

enum EDurationControlNotification {
  none(0),
  duration1Hour(1),
  duration3Hours(2),
  halfProgress(3),
  noProgress(4),
  exitSoon3h(5),
  exitSoon5h(6),
  exitSoonNight(7),
  ;

  final int value;

  const EDurationControlNotification(this.value);

  factory EDurationControlNotification.fromValue(int value) {
    switch (value) {
      case 0:
        return EDurationControlNotification.none;
      case 1:
        return EDurationControlNotification.duration1Hour;
      case 2:
        return EDurationControlNotification.duration3Hours;
      case 3:
        return EDurationControlNotification.halfProgress;
      case 4:
        return EDurationControlNotification.noProgress;
      case 5:
        return EDurationControlNotification.exitSoon3h;
      case 6:
        return EDurationControlNotification.exitSoon5h;
      case 7:
        return EDurationControlNotification.exitSoonNight;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EDurationControlNotification'. The value was: '$value'",
        );
    }
  }
}
