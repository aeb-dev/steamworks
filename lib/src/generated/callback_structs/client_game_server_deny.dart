import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class ClientGameServerDeny extends Struct {
  @UnsignedInt()
  external int appId;

  @UnsignedInt()
  external int gameServerIp;

  @UnsignedShort()
  external int gameServerPort;

  @UnsignedShort()
  external int secure;

  @UnsignedInt()
  external int reason;
}
