// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eduration_control_notification.dart";
import "../enums/eduration_control_progress.dart";
import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class DurationControl extends Struct {
  static int get callbackId => 167;

  @Int32()
  external EResultAliasDart result;

  @UnsignedInt()
  external AppId appid;

  @Bool()
  external bool applicable;

  @Int()
  external int csecsLast5h;

  @Int32()
  external EDurationControlProgressAliasDart progress;

  @Int32()
  external EDurationControlNotificationAliasDart notification;

  @Int()
  external int csecsToday;

  @Int()
  external int csecsRemaining;
}

extension DurationControlExtensions on Pointer<DurationControl> {
  EResult get result => EResult.fromValue(ref.result);

  AppId get appid => ref.appid;

  bool get applicable => ref.applicable;

  int get csecsLast5h => ref.csecsLast5h;

  EDurationControlProgress get progress =>
      EDurationControlProgress.fromValue(ref.progress);

  EDurationControlNotification get notification =>
      EDurationControlNotification.fromValue(ref.notification);

  int get csecsToday => ref.csecsToday;

  int get csecsRemaining => ref.csecsRemaining;
}
