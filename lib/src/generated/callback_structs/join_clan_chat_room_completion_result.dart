// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/echat_room_enter_response.dart";
import "../typedefs.dart";

@Packed(8)
class JoinClanChatRoomCompletionResult extends Struct {
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
