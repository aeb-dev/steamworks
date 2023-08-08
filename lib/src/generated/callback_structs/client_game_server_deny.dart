// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class ClientGameServerDeny extends Struct {
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
