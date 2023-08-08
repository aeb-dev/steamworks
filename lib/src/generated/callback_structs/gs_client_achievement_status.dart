// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
final class GsClientAchievementStatus extends Struct {
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
