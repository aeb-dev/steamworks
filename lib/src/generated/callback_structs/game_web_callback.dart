import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class GameWebCallback extends Struct {
  external Pointer<Utf8> url;
}