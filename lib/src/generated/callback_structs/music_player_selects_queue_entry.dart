import "dart:ffi";
import "package:ffi/ffi.dart";

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
