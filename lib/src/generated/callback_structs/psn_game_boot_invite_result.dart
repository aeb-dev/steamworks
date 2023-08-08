// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class PsnGameBootInviteResult extends Struct {
  static int get callbackId => 515;

  @Bool()
  external bool gameBootInviteExists;

  @UnsignedLongLong()
  external CSteamId steamIdLobby;
}

extension PsnGameBootInviteResultExtensions
    on Pointer<PsnGameBootInviteResult> {
  bool get gameBootInviteExists => ref.gameBootInviteExists;

  CSteamId get steamIdLobby => ref.steamIdLobby;
}
