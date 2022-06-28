// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class ClientGameServerDeny extends Struct {
  static int get callbackId => 113;

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

extension ClientGameServerDenyExtensions on Pointer<ClientGameServerDeny> {
  int get appId => ref.appId;

  int get gameServerIp => ref.gameServerIp;

  int get gameServerPort => ref.gameServerPort;

  int get secure => ref.secure;

  int get reason => ref.reason;
}
