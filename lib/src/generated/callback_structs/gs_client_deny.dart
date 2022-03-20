import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_deny_reason.dart";
import "../typedefs.dart";

@Packed(8)
class GsClientDeny extends Struct {
  @UnsignedLongLong()
  external CSteamId steamId;

  @Int32()
  external EDenyReason denyReason;

  external Pointer<Utf8> optionalText;
}
