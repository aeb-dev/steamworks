import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class DlcInstalled extends Struct {
  @UnsignedInt()
  external AppId appId;
}
