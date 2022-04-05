// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyMatchList extends Struct {
  static int get callbackId => 510;

  @UnsignedInt()
  external int lobbiesMatching;
}

extension LobbyMatchListExtensions on Pointer<LobbyMatchList> {
  int get lobbiesMatching => ref.lobbiesMatching;
}
