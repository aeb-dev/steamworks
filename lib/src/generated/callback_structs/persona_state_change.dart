import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class PersonaStateChange extends Struct {
  @UnsignedLongLong()
  external int steamId;

  @Int()
  external int changeFlags;
}
