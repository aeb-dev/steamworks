import "dart:ffi";

import "package:ffi/ffi.dart";

import "../interfaces/steam_matchmaking_ping_response.dart";
import "../interfaces/steam_matchmaking_players_response.dart";
import "../interfaces/steam_matchmaking_rules_response.dart";
import "../interfaces/steam_matchmaking_server_list_response.dart";
import "../steam_api.dart";
import "../structs/game_server_item.dart";
import "../structs/match_making_key_value_pair.dart";
import "../typedefs.dart";

class SteamMatchmakingServers extends Opaque {
  static Pointer<SteamMatchmakingServers> steamMatchmakingServers() => nullptr;
}

final _requestInternetServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<SteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<SteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<SteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<SteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestInternetServerList");

final _requestLANServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<SteamMatchmakingServers>,
  UnsignedInt,
  Pointer<SteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<SteamMatchmakingServers>,
  AppId,
  Pointer<SteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestLANServerList");

final _requestFriendsServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<SteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<SteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<SteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<SteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestFriendsServerList");

final _requestFavoritesServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<SteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<SteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<SteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<SteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestFavoritesServerList");

final _requestHistoryServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<SteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<SteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<SteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<SteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestHistoryServerList");

final _requestSpectatorServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<SteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<SteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<SteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<SteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestSpectatorServerList");

final _releaseRequest = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingServers>,
  Pointer<Void>,
),
    void Function(
  Pointer<SteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_ReleaseRequest");

final _getServerDetails = dl.lookupFunction<
    Pointer<GameServerItem> Function(
  Pointer<SteamMatchmakingServers>,
  Pointer<Void>,
  Int,
),
    Pointer<GameServerItem> Function(
  Pointer<SteamMatchmakingServers>,
  HServerListRequest,
  int,
)>("SteamAPI_ISteamMatchmakingServers_GetServerDetails");

final _cancelQuery = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingServers>,
  Pointer<Void>,
),
    void Function(
  Pointer<SteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_CancelQuery");

final _refreshQuery = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingServers>,
  Pointer<Void>,
),
    void Function(
  Pointer<SteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_RefreshQuery");

final _isRefreshing = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmakingServers>,
  Pointer<Void>,
),
    bool Function(
  Pointer<SteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_IsRefreshing");

final _getServerCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmakingServers>,
  Pointer<Void>,
),
    int Function(
  Pointer<SteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_GetServerCount");

final _refreshServer = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingServers>,
  Pointer<Void>,
  Int,
),
    void Function(
  Pointer<SteamMatchmakingServers>,
  HServerListRequest,
  int,
)>("SteamAPI_ISteamMatchmakingServers_RefreshServer");

final _pingServer = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmakingServers>,
  UnsignedInt,
  UnsignedShort,
  Pointer<SteamMatchmakingPingResponse>,
),
    HServerQuery Function(
  Pointer<SteamMatchmakingServers>,
  int,
  int,
  Pointer<SteamMatchmakingPingResponse>,
)>("SteamAPI_ISteamMatchmakingServers_PingServer");

final _playerDetails = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmakingServers>,
  UnsignedInt,
  UnsignedShort,
  Pointer<SteamMatchmakingPlayersResponse>,
),
    HServerQuery Function(
  Pointer<SteamMatchmakingServers>,
  int,
  int,
  Pointer<SteamMatchmakingPlayersResponse>,
)>("SteamAPI_ISteamMatchmakingServers_PlayerDetails");

final _serverRules = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmakingServers>,
  UnsignedInt,
  UnsignedShort,
  Pointer<SteamMatchmakingRulesResponse>,
),
    HServerQuery Function(
  Pointer<SteamMatchmakingServers>,
  int,
  int,
  Pointer<SteamMatchmakingRulesResponse>,
)>("SteamAPI_ISteamMatchmakingServers_ServerRules");

final _cancelServerQuery = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingServers>,
  Int,
),
    void Function(
  Pointer<SteamMatchmakingServers>,
  HServerQuery,
)>("SteamAPI_ISteamMatchmakingServers_CancelServerQuery");

extension SteamMatchmakingServersExtensions
    on Pointer<SteamMatchmakingServers> {
  HServerListRequest requestInternetServerList(
    AppId iApp,
    Pointer<Pointer<MatchMakingKeyValuePair>> ppchFilters,
    int nFilters,
    Pointer<SteamMatchmakingServerListResponse> pRequestServersResponse,
  ) =>
      _requestInternetServerList.call(
        this,
        iApp,
        ppchFilters,
        nFilters,
        pRequestServersResponse,
      );

  HServerListRequest requestLANServerList(
    AppId iApp,
    Pointer<SteamMatchmakingServerListResponse> pRequestServersResponse,
  ) =>
      _requestLANServerList.call(
        this,
        iApp,
        pRequestServersResponse,
      );

  HServerListRequest requestFriendsServerList(
    AppId iApp,
    Pointer<Pointer<MatchMakingKeyValuePair>> ppchFilters,
    int nFilters,
    Pointer<SteamMatchmakingServerListResponse> pRequestServersResponse,
  ) =>
      _requestFriendsServerList.call(
        this,
        iApp,
        ppchFilters,
        nFilters,
        pRequestServersResponse,
      );

  HServerListRequest requestFavoritesServerList(
    AppId iApp,
    Pointer<Pointer<MatchMakingKeyValuePair>> ppchFilters,
    int nFilters,
    Pointer<SteamMatchmakingServerListResponse> pRequestServersResponse,
  ) =>
      _requestFavoritesServerList.call(
        this,
        iApp,
        ppchFilters,
        nFilters,
        pRequestServersResponse,
      );

  HServerListRequest requestHistoryServerList(
    AppId iApp,
    Pointer<Pointer<MatchMakingKeyValuePair>> ppchFilters,
    int nFilters,
    Pointer<SteamMatchmakingServerListResponse> pRequestServersResponse,
  ) =>
      _requestHistoryServerList.call(
        this,
        iApp,
        ppchFilters,
        nFilters,
        pRequestServersResponse,
      );

  HServerListRequest requestSpectatorServerList(
    AppId iApp,
    Pointer<Pointer<MatchMakingKeyValuePair>> ppchFilters,
    int nFilters,
    Pointer<SteamMatchmakingServerListResponse> pRequestServersResponse,
  ) =>
      _requestSpectatorServerList.call(
        this,
        iApp,
        ppchFilters,
        nFilters,
        pRequestServersResponse,
      );

  void releaseRequest(
    HServerListRequest hServerListRequest,
  ) =>
      _releaseRequest.call(
        this,
        hServerListRequest,
      );

  Pointer<GameServerItem> getServerDetails(
    HServerListRequest hRequest,
    int iServer,
  ) =>
      _getServerDetails.call(
        this,
        hRequest,
        iServer,
      );

  void cancelQuery(
    HServerListRequest hRequest,
  ) =>
      _cancelQuery.call(
        this,
        hRequest,
      );

  void refreshQuery(
    HServerListRequest hRequest,
  ) =>
      _refreshQuery.call(
        this,
        hRequest,
      );

  bool isRefreshing(
    HServerListRequest hRequest,
  ) =>
      _isRefreshing.call(
        this,
        hRequest,
      );

  int getServerCount(
    HServerListRequest hRequest,
  ) =>
      _getServerCount.call(
        this,
        hRequest,
      );

  void refreshServer(
    HServerListRequest hRequest,
    int iServer,
  ) =>
      _refreshServer.call(
        this,
        hRequest,
        iServer,
      );

  HServerQuery pingServer(
    int unIP,
    int usPort,
    Pointer<SteamMatchmakingPingResponse> pRequestServersResponse,
  ) =>
      _pingServer.call(
        this,
        unIP,
        usPort,
        pRequestServersResponse,
      );

  HServerQuery playerDetails(
    int unIP,
    int usPort,
    Pointer<SteamMatchmakingPlayersResponse> pRequestServersResponse,
  ) =>
      _playerDetails.call(
        this,
        unIP,
        usPort,
        pRequestServersResponse,
      );

  HServerQuery serverRules(
    int unIP,
    int usPort,
    Pointer<SteamMatchmakingRulesResponse> pRequestServersResponse,
  ) =>
      _serverRules.call(
        this,
        unIP,
        usPort,
        pRequestServersResponse,
      );

  void cancelServerQuery(
    HServerQuery hServerQuery,
  ) =>
      _cancelServerQuery.call(
        this,
        hServerQuery,
      );
}
