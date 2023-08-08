// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
final class EquippedProfileItems extends Struct {
  static int get callbackId => 351;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Bool()
  external bool hasAnimatedAvatar;

  @Bool()
  external bool hasAvatarFrame;

  @Bool()
  external bool hasProfileModifier;

  @Bool()
  external bool hasProfileBackground;

  @Bool()
  external bool hasMiniProfileBackground;
}

extension EquippedProfileItemsExtensions on Pointer<EquippedProfileItems> {
  EResult get result => EResult.fromValue(ref.result);

  CSteamId get steamId => ref.steamId;

  bool get hasAnimatedAvatar => ref.hasAnimatedAvatar;

  bool get hasAvatarFrame => ref.hasAvatarFrame;

  bool get hasProfileModifier => ref.hasProfileModifier;

  bool get hasProfileBackground => ref.hasProfileBackground;

  bool get hasMiniProfileBackground => ref.hasMiniProfileBackground;
}
