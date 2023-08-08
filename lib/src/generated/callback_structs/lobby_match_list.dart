// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class LobbyMatchList extends Struct {
  static int get callbackId => 510;

  @UnsignedInt()
  external int lobbiesMatching;
}

extension LobbyMatchListExtensions on Pointer<LobbyMatchList> {
  int get lobbiesMatching => ref.lobbiesMatching;
}
