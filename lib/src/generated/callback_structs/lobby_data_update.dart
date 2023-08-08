// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class LobbyDataUpdate extends Struct {
  static int get callbackId => 505;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdMember;

  @UnsignedChar()
  external int success;
}

extension LobbyDataUpdateExtensions on Pointer<LobbyDataUpdate> {
  int get steamIdLobby => ref.steamIdLobby;

  int get steamIdMember => ref.steamIdMember;

  int get success => ref.success;
}
