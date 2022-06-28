// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class PsnGameBootInviteResult extends Struct {
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
