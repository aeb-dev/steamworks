import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class MusicPlayerSelectsPlaylistEntry extends Struct {
  @Int()
  external int nId;
}
