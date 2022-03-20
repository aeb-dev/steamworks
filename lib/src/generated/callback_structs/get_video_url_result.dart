import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class GetVideoUrlResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedInt()
  external AppId videoAppId;

  external Pointer<Utf8> url;
}
