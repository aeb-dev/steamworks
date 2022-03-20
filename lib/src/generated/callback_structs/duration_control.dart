import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_duration_control_notification.dart";
import "../enums/e_duration_control_progress.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class DurationControl extends Struct {
  @Int32()
  external EResult result;

  @UnsignedInt()
  external AppId appid;

  @Bool()
  external bool applicable;

  @Int()
  external int csecsLast5h;

  @Int32()
  external EDurationControlProgress progress;

  @Int32()
  external EDurationControlNotification notification;

  @Int()
  external int csecsToday;

  @Int()
  external int csecsRemaining;
}
