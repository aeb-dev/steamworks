import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class MusicPlayerSelectsQueueEntry extends Struct {
  @Int()
  external int nId;
}
