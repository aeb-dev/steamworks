import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class NumberOfCurrentPlayers extends Struct {
  @UnsignedChar()
  external int success;

  @Int()
  external int players;
}
