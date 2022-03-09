import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class SteamParamStringArray extends Struct {
  external Pointer<Pointer<Utf8>> strings;

  @Int()
  external int numStrings;
}
