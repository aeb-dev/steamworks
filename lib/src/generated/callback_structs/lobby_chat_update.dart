// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class LobbyChatUpdate extends Struct {
  static int get callbackId => 506;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdUserChanged;

  @UnsignedLongLong()
  external int steamIdMakingChange;

  @UnsignedInt()
  external int chatMemberStateChange;
}

extension LobbyChatUpdateExtensions on Pointer<LobbyChatUpdate> {
  int get steamIdLobby => ref.steamIdLobby;

  int get steamIdUserChanged => ref.steamIdUserChanged;

  int get steamIdMakingChange => ref.steamIdMakingChange;

  int get chatMemberStateChange => ref.chatMemberStateChange;
}
