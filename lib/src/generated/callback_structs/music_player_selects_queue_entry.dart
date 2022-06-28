// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class MusicPlayerSelectsQueueEntry extends Struct {
  static int get callbackId => 4012;

  @Int()
  external int nId;
}

extension MusicPlayerSelectsQueueEntryExtensions
    on Pointer<MusicPlayerSelectsQueueEntry> {
  int get nId => ref.nId;
}
