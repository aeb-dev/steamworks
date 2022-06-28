// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class MusicPlayerSelectsPlaylistEntry extends Struct {
  static int get callbackId => 4013;

  @Int()
  external int nId;
}

extension MusicPlayerSelectsPlaylistEntryExtensions
    on Pointer<MusicPlayerSelectsPlaylistEntry> {
  int get nId => ref.nId;
}
