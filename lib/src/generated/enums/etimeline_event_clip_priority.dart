// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ETimelineEventClipPriorityAliasDart = int;
typedef ETimelineEventClipPriorityAliasC = Int32;

enum ETimelineEventClipPriority {
  invalid(0),
  none(1),
  standard(2),
  featured(3),
  ;

  final int value;

  const ETimelineEventClipPriority(this.value);

  factory ETimelineEventClipPriority.fromValue(int value) {
    switch (value) {
      case 0:
        return ETimelineEventClipPriority.invalid;
      case 1:
        return ETimelineEventClipPriority.none;
      case 2:
        return ETimelineEventClipPriority.standard;
      case 3:
        return ETimelineEventClipPriority.featured;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ETimelineEventClipPriority'. The value was: '$value'",
        );
    }
  }
}
