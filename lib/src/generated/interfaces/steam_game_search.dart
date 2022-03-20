import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/e_game_search_error_code.dart";
import "../enums/e_player_result.dart";
import "../typedefs.dart";

final _steamGameSearch = dl.lookupFunction<Pointer<SteamGameSearch> Function(),
    Pointer<SteamGameSearch> Function()>("SteamAPI_SteamGameSearch_v001");

class SteamGameSearch extends Opaque {
  static Pointer<SteamGameSearch> get userInstance => _steamGameSearch();
}

final _addGameSearchParams = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameSearch_AddGameSearchParams");

final _searchForGameWithLobby = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  UnsignedLongLong,
  Int,
  Int,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  CSteamId,
  int,
  int,
)>("SteamAPI_ISteamGameSearch_SearchForGameWithLobby");

final _searchForGameSolo = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  Int,
  Int,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  int,
  int,
)>("SteamAPI_ISteamGameSearch_SearchForGameSolo");

final _acceptGame = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
)>("SteamAPI_ISteamGameSearch_AcceptGame");

final _declineGame = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
)>("SteamAPI_ISteamGameSearch_DeclineGame");

final _retrieveConnectionDetails = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Int,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  CSteamId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamGameSearch_RetrieveConnectionDetails");

final _endGameSearch = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
)>("SteamAPI_ISteamGameSearch_EndGameSearch");

final _setGameHostParams = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameSearch_SetGameHostParams");

final _setConnectionDetails = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  Pointer<Utf8>,
  Int,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamGameSearch_SetConnectionDetails");

final _requestPlayersForGame = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  Int,
  Int,
  Int,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  int,
  int,
  int,
)>("SteamAPI_ISteamGameSearch_RequestPlayersForGame");

final _hostConfirmGameStart = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  UnsignedLongLong,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  int,
)>("SteamAPI_ISteamGameSearch_HostConfirmGameStart");

final _cancelRequestPlayersForGame = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
)>("SteamAPI_ISteamGameSearch_CancelRequestPlayersForGame");

final _submitPlayerResult = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  UnsignedLongLong,
  UnsignedLongLong,
  Int32,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  int,
  CSteamId,
  EPlayerResult,
)>("SteamAPI_ISteamGameSearch_SubmitPlayerResult");

final _endGame = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamGameSearch>,
  UnsignedLongLong,
),
    EGameSearchErrorCode Function(
  Pointer<SteamGameSearch>,
  int,
)>("SteamAPI_ISteamGameSearch_EndGame");

extension SteamGameSearchExtensions on Pointer<SteamGameSearch> {
  EGameSearchErrorCode addGameSearchParams(
    Pointer<Utf8> keyToFind,
    Pointer<Utf8> valuesToFind,
  ) =>
      _addGameSearchParams.call(
        this,
        keyToFind,
        valuesToFind,
      );

  EGameSearchErrorCode searchForGameWithLobby(
    CSteamId steamIdLobby,
    int nPlayerMin,
    int nPlayerMax,
  ) =>
      _searchForGameWithLobby.call(
        this,
        steamIdLobby,
        nPlayerMin,
        nPlayerMax,
      );

  EGameSearchErrorCode searchForGameSolo(
    int nPlayerMin,
    int nPlayerMax,
  ) =>
      _searchForGameSolo.call(
        this,
        nPlayerMin,
        nPlayerMax,
      );

  EGameSearchErrorCode acceptGame() => _acceptGame.call(
        this,
      );

  EGameSearchErrorCode declineGame() => _declineGame.call(
        this,
      );

  EGameSearchErrorCode retrieveConnectionDetails(
    CSteamId steamIdHost,
    Pointer<Utf8> connectionDetails,
    int cubConnectionDetails,
  ) =>
      _retrieveConnectionDetails.call(
        this,
        steamIdHost,
        connectionDetails,
        cubConnectionDetails,
      );

  EGameSearchErrorCode endGameSearch() => _endGameSearch.call(
        this,
      );

  EGameSearchErrorCode setGameHostParams(
    Pointer<Utf8> key,
    Pointer<Utf8> value,
  ) =>
      _setGameHostParams.call(
        this,
        key,
        value,
      );

  EGameSearchErrorCode setConnectionDetails(
    Pointer<Utf8> connectionDetails,
    int cubConnectionDetails,
  ) =>
      _setConnectionDetails.call(
        this,
        connectionDetails,
        cubConnectionDetails,
      );

  EGameSearchErrorCode requestPlayersForGame(
    int nPlayerMin,
    int nPlayerMax,
    int nMaxTeamSize,
  ) =>
      _requestPlayersForGame.call(
        this,
        nPlayerMin,
        nPlayerMax,
        nMaxTeamSize,
      );

  EGameSearchErrorCode hostConfirmGameStart(
    int uniqueGameId,
  ) =>
      _hostConfirmGameStart.call(
        this,
        uniqueGameId,
      );

  EGameSearchErrorCode cancelRequestPlayersForGame() =>
      _cancelRequestPlayersForGame.call(
        this,
      );

  EGameSearchErrorCode submitPlayerResult(
    int uniqueGameId,
    CSteamId steamIdPlayer,
    EPlayerResult ePlayerResult,
  ) =>
      _submitPlayerResult.call(
        this,
        uniqueGameId,
        steamIdPlayer,
        ePlayerResult,
      );

  EGameSearchErrorCode endGame(
    int uniqueGameId,
  ) =>
      _endGame.call(
        this,
        uniqueGameId,
      );
}
