// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/egame_search_error_code.dart";
import "../enums/eplayer_result.dart";
import "../typedefs.dart";

final _steamGameSearch = dl.lookupFunction<Pointer<ISteamGameSearch> Function(),
    Pointer<ISteamGameSearch> Function()>("SteamAPI_SteamGameSearch_v001");

class ISteamGameSearch extends Opaque {
  static Pointer<ISteamGameSearch> get userInstance => _steamGameSearch();
}

final _addGameSearchParams = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameSearch_AddGameSearchParams");

final _searchForGameWithLobby = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  UnsignedLongLong,
  Int,
  Int,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  CSteamId,
  int,
  int,
)>("SteamAPI_ISteamGameSearch_SearchForGameWithLobby");

final _searchForGameSolo = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  Int,
  Int,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  int,
  int,
)>("SteamAPI_ISteamGameSearch_SearchForGameSolo");

final _acceptGame = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
)>("SteamAPI_ISteamGameSearch_AcceptGame");

final _declineGame = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
)>("SteamAPI_ISteamGameSearch_DeclineGame");

final _retrieveConnectionDetails = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Int,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  CSteamId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamGameSearch_RetrieveConnectionDetails");

final _endGameSearch = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
)>("SteamAPI_ISteamGameSearch_EndGameSearch");

final _setGameHostParams = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameSearch_SetGameHostParams");

final _setConnectionDetails = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  Pointer<Utf8>,
  Int,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamGameSearch_SetConnectionDetails");

final _requestPlayersForGame = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  Int,
  Int,
  Int,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  int,
  int,
  int,
)>("SteamAPI_ISteamGameSearch_RequestPlayersForGame");

final _hostConfirmGameStart = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  UnsignedLongLong,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  int,
)>("SteamAPI_ISteamGameSearch_HostConfirmGameStart");

final _cancelRequestPlayersForGame = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
)>("SteamAPI_ISteamGameSearch_CancelRequestPlayersForGame");

final _submitPlayerResult = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  UnsignedLongLong,
  UnsignedLongLong,
  EPlayerResultAliasC,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  int,
  CSteamId,
  EPlayerResultAliasDart,
)>("SteamAPI_ISteamGameSearch_SubmitPlayerResult");

final _endGame = dl.lookupFunction<
    EGameSearchErrorCodeAliasC Function(
  Pointer<ISteamGameSearch>,
  UnsignedLongLong,
),
    EGameSearchErrorCodeAliasDart Function(
  Pointer<ISteamGameSearch>,
  int,
)>("SteamAPI_ISteamGameSearch_EndGame");

extension ISteamGameSearchExtensions on Pointer<ISteamGameSearch> {
  EGameSearchErrorCode addGameSearchParams(
    Pointer<Utf8> keyToFind,
    Pointer<Utf8> valuesToFind,
  ) =>
      EGameSearchErrorCode.fromValue(
        _addGameSearchParams.call(
          this,
          keyToFind,
          valuesToFind,
        ),
      );

  EGameSearchErrorCode searchForGameWithLobby(
    CSteamId steamIdLobby,
    int nPlayerMin,
    int nPlayerMax,
  ) =>
      EGameSearchErrorCode.fromValue(
        _searchForGameWithLobby.call(
          this,
          steamIdLobby,
          nPlayerMin,
          nPlayerMax,
        ),
      );

  EGameSearchErrorCode searchForGameSolo(
    int nPlayerMin,
    int nPlayerMax,
  ) =>
      EGameSearchErrorCode.fromValue(
        _searchForGameSolo.call(
          this,
          nPlayerMin,
          nPlayerMax,
        ),
      );

  EGameSearchErrorCode acceptGame() => EGameSearchErrorCode.fromValue(
        _acceptGame.call(
          this,
        ),
      );

  EGameSearchErrorCode declineGame() => EGameSearchErrorCode.fromValue(
        _declineGame.call(
          this,
        ),
      );

  EGameSearchErrorCode retrieveConnectionDetails(
    CSteamId steamIdHost,
    Pointer<Utf8> connectionDetails,
    int cubConnectionDetails,
  ) =>
      EGameSearchErrorCode.fromValue(
        _retrieveConnectionDetails.call(
          this,
          steamIdHost,
          connectionDetails,
          cubConnectionDetails,
        ),
      );

  EGameSearchErrorCode endGameSearch() => EGameSearchErrorCode.fromValue(
        _endGameSearch.call(
          this,
        ),
      );

  EGameSearchErrorCode setGameHostParams(
    Pointer<Utf8> key,
    Pointer<Utf8> value,
  ) =>
      EGameSearchErrorCode.fromValue(
        _setGameHostParams.call(
          this,
          key,
          value,
        ),
      );

  EGameSearchErrorCode setConnectionDetails(
    Pointer<Utf8> connectionDetails,
    int cubConnectionDetails,
  ) =>
      EGameSearchErrorCode.fromValue(
        _setConnectionDetails.call(
          this,
          connectionDetails,
          cubConnectionDetails,
        ),
      );

  EGameSearchErrorCode requestPlayersForGame(
    int nPlayerMin,
    int nPlayerMax,
    int nMaxTeamSize,
  ) =>
      EGameSearchErrorCode.fromValue(
        _requestPlayersForGame.call(
          this,
          nPlayerMin,
          nPlayerMax,
          nMaxTeamSize,
        ),
      );

  EGameSearchErrorCode hostConfirmGameStart(
    int uniqueGameId,
  ) =>
      EGameSearchErrorCode.fromValue(
        _hostConfirmGameStart.call(
          this,
          uniqueGameId,
        ),
      );

  EGameSearchErrorCode cancelRequestPlayersForGame() =>
      EGameSearchErrorCode.fromValue(
        _cancelRequestPlayersForGame.call(
          this,
        ),
      );

  EGameSearchErrorCode submitPlayerResult(
    int uniqueGameId,
    CSteamId steamIdPlayer,
    EPlayerResult ePlayerResult,
  ) =>
      EGameSearchErrorCode.fromValue(
        _submitPlayerResult.call(
          this,
          uniqueGameId,
          steamIdPlayer,
          ePlayerResult.value,
        ),
      );

  EGameSearchErrorCode endGame(
    int uniqueGameId,
  ) =>
      EGameSearchErrorCode.fromValue(
        _endGame.call(
          this,
          uniqueGameId,
        ),
      );
}
