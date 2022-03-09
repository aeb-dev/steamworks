import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../enums/player_accept_state.dart";
import "../typedefs.dart";

@Packed(4)
class RequestPlayersForGameResultCallback extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int lSearchId;

  @UnsignedLongLong()
  external CSteamId steamIdPlayerFound;

  @UnsignedLongLong()
  external CSteamId steamIdLobby;

  @Int32()
  external PlayerAcceptState playerAcceptState;

  @Int()
  external int playerIndex;

  @Int()
  external int totalPlayersFound;

  @Int()
  external int totalPlayersAcceptedGame;

  @Int()
  external int suggestedTeamIndex;

  @UnsignedLongLong()
  external int lUniqueGameId;
}
