import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class MusicPlayerSelectsQueueEntry extends Struct {
  @Int()
  external int nId;
}
