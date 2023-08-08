// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class LobbyKicked extends Struct {
  static int get callbackId => 512;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdAdmin;

  @UnsignedChar()
  external int kickedDueToDisconnect;
}

extension LobbyKickedExtensions on Pointer<LobbyKicked> {
  int get steamIdLobby => ref.steamIdLobby;

  int get steamIdAdmin => ref.steamIdAdmin;

  int get kickedDueToDisconnect => ref.kickedDueToDisconnect;
}
