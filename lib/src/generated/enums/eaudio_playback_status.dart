// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'AudioPlaybackStatus'. The value was: '$value'";
    }
  }
}
