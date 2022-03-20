import "dart:ffi";

import "../enums/e_result.dart";

@Packed(8)
class SteamServerConnectFailure extends Struct {
  @Int32()
  external EResult result;

  @Bool()
  external bool stillRetrying;
}
