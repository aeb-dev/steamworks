import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class GameOverlayActivated extends Struct {
  @UnsignedChar()
  external int active;
}
