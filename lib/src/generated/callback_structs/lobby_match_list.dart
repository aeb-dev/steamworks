// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class LobbyMatchList extends Struct {
  static int get callbackId => 510;

  @UnsignedInt()
  external int lobbiesMatching;
}

extension LobbyMatchListExtensions on Pointer<LobbyMatchList> {
  int get lobbiesMatching => ref.lobbiesMatching;
}
