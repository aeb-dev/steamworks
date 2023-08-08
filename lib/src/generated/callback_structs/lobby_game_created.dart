// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class LobbyGameCreated extends Struct {
  static int get callbackId => 509;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdGameServer;

  @UnsignedInt()
  external int ip;

  @UnsignedShort()
  external int port;
}

extension LobbyGameCreatedExtensions on Pointer<LobbyGameCreated> {
  int get steamIdLobby => ref.steamIdLobby;

  int get steamIdGameServer => ref.steamIdGameServer;

  int get ip => ref.ip;

  int get port => ref.port;
}
