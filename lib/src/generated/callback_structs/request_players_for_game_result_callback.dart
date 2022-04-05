import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eplayer_accept_state.dart";
import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RequestPlayersForGameResultCallback extends Struct {
  static int get callbackId => 5212;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int searchId;

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
  external int uniqueGameId;
}

extension RequestPlayersForGameResultCallbackExtensions
    on Pointer<RequestPlayersForGameResultCallback> {
  EResult get result => ref.result;

  int get searchId => ref.searchId;

  CSteamId get steamIdPlayerFound => ref.steamIdPlayerFound;

  CSteamId get steamIdLobby => ref.steamIdLobby;

  PlayerAcceptState get playerAcceptState => ref.playerAcceptState;

  int get playerIndex => ref.playerIndex;

  int get totalPlayersFound => ref.totalPlayersFound;

  int get totalPlayersAcceptedGame => ref.totalPlayersAcceptedGame;

  int get suggestedTeamIndex => ref.suggestedTeamIndex;

  int get uniqueGameId => ref.uniqueGameId;
}
