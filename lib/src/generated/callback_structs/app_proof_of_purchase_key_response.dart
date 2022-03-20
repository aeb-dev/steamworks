import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";

@Packed(8)
class AppProofOfPurchaseKeyResponse extends Struct {
  @Int32()
  external EResult result;

  @UnsignedInt()
  external int appId;

  @UnsignedInt()
  external int keyLength;

  external Pointer<Utf8> key;
}
