import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class GsClientAchievementStatus extends Struct {
  static int get callbackId => 206;

  @UnsignedLongLong()
  external int steamId;

  external Pointer<Utf8> achievement;

  @Bool()
  external bool unlocked;
}

extension GsClientAchievementStatusExtensions
    on Pointer<GsClientAchievementStatus> {
  int get steamId => ref.steamId;

  Pointer<Utf8> get achievement => ref.achievement;

  bool get unlocked => ref.unlocked;
}
