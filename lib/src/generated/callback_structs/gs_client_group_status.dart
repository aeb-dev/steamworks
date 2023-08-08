// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class GsClientGroupStatus extends Struct {
  static int get callbackId => 208;

  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @UnsignedLongLong()
  external CSteamId steamIdGroup;

  @Bool()
  external bool member;

  @Bool()
  external bool officer;
}

extension GsClientGroupStatusExtensions on Pointer<GsClientGroupStatus> {
  CSteamId get steamIdUser => ref.steamIdUser;

  CSteamId get steamIdGroup => ref.steamIdGroup;

  bool get member => ref.member;

  bool get officer => ref.officer;
}
