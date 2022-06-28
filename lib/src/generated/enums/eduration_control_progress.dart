// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'EDurationControlProgress'. The value was: '$value'";
    }
  }
}
