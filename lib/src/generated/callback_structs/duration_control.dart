// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eduration_control_notification.dart";
import "../enums/eduration_control_progress.dart";
import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class DurationControl extends Struct {
  static int get callbackId => 167;

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

extension DurationControlExtensions on Pointer<DurationControl> {
  EResult get result => ref.result;

  AppId get appid => ref.appid;

  bool get applicable => ref.applicable;

  int get csecsLast5h => ref.csecsLast5h;

  EDurationControlProgress get progress => ref.progress;

  EDurationControlNotification get notification => ref.notification;

  int get csecsToday => ref.csecsToday;

  int get csecsRemaining => ref.csecsRemaining;
}
