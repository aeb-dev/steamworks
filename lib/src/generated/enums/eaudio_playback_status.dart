// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef AudioPlaybackStatusAliasDart = int;
typedef AudioPlaybackStatusAliasC = Int32;

enum AudioPlaybackStatus {
  undefined(0),
  playing(1),
  paused(2),
  idle(3),
  ;

  final int value;

  const AudioPlaybackStatus(this.value);

  factory AudioPlaybackStatus.fromValue(int value) {
    switch (value) {
      case 0:
        return AudioPlaybackStatus.undefined;
      case 1:
        return AudioPlaybackStatus.playing;
      case 2:
        return AudioPlaybackStatus.paused;
      case 3:
        return AudioPlaybackStatus.idle;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'AudioPlaybackStatus'. The value was: '$value'",
        );
    }
  }
}
