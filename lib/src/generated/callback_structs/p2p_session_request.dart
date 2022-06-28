// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class P2pSessionRequest extends Struct {
  static int get callbackId => 1202;

  @UnsignedLongLong()
  external CSteamId steamIdRemote;
}

extension P2pSessionRequestExtensions on Pointer<P2pSessionRequest> {
  CSteamId get steamIdRemote => ref.steamIdRemote;
}
