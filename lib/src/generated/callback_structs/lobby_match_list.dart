import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyMatchList extends Struct {
  @UnsignedInt()
  external int lobbiesMatching;
}
