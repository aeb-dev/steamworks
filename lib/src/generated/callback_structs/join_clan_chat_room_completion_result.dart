// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/echat_room_enter_response.dart";
import "../typedefs.dart";

@Packed(8)
final class JoinClanChatRoomCompletionResult extends Struct {
  static int get callbackId => 342;

  @UnsignedLongLong()
  external CSteamId steamIdClanChat;

  @Int32()
  external EChatRoomEnterResponseAliasDart chatRoomEnterResponse;
}

extension JoinClanChatRoomCompletionResultExtensions
    on Pointer<JoinClanChatRoomCompletionResult> {
  CSteamId get steamIdClanChat => ref.steamIdClanChat;

  EChatRoomEnterResponse get chatRoomEnterResponse =>
      EChatRoomEnterResponse.fromValue(ref.chatRoomEnterResponse);
}
