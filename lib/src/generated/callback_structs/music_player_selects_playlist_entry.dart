// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

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
