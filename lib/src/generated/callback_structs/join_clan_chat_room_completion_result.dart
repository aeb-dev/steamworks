import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/echat_room_enter_response.dart";
import "../typedefs.dart";

@Packed(8)
class JoinClanChatRoomCompletionResult extends Struct {
  static int get callbackId => 342;

  @UnsignedLongLong()
  external CSteamId steamIdClanChat;

  @Int32()
  external EChatRoomEnterResponse chatRoomEnterResponse;
}

extension JoinClanChatRoomCompletionResultExtensions
    on Pointer<JoinClanChatRoomCompletionResult> {
  CSteamId get steamIdClanChat => ref.steamIdClanChat;

  EChatRoomEnterResponse get chatRoomEnterResponse => ref.chatRoomEnterResponse;
}
