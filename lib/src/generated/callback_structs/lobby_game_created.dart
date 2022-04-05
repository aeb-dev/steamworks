import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyGameCreated extends Struct {
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
