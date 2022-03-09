import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_chat_room_enter_response.dart";
import "../typedefs.dart";

@Packed(8)
class JoinClanChatRoomCompletionResult extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdClanChat;

  @Int32()
  external EChatRoomEnterResponse chatRoomEnterResponse;
}
