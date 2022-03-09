import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class StoreAuthUrlResponse extends Struct {
  external Pointer<Utf8> url;
}
