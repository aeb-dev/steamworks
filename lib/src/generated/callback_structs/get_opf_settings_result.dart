import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class GetOpfSettingsResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedInt()
  external AppId videoAppId;
}
