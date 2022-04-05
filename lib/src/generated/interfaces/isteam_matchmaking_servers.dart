// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../interfaces/isteam_matchmaking_ping_response.dart";
import "../interfaces/isteam_matchmaking_players_response.dart";
import "../interfaces/isteam_matchmaking_rules_response.dart";
import "../interfaces/isteam_matchmaking_server_list_response.dart";
import "../structs/game_server_item.dart";
import "../structs/match_making_key_value_pair.dart";
import "../typedefs.dart";

final _steamMatchmakingServers = dl.lookupFunction<
    Pointer<ISteamMatchmakingServers> Function(),
    Pointer<ISteamMatchmakingServers>
        Function()>("SteamAPI_SteamMatchmakingServers_v002");

class ISteamMatchmakingServers extends Opaque {
  static Pointer<ISteamMatchmakingServers> get userInstance =>
      _steamMatchmakingServers();
}

final _requestInternetServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<ISteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<ISteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<ISteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<ISteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestInternetServerList");

final _requestLANServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<ISteamMatchmakingServers>,
  UnsignedInt,
  Pointer<ISteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<ISteamMatchmakingServers>,
  AppId,
  Pointer<ISteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestLANServerList");

final _requestFriendsServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<ISteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<ISteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<ISteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<ISteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestFriendsServerList");

final _requestFavoritesServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<ISteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<ISteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<ISteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<ISteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestFavoritesServerList");

final _requestHistoryServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<ISteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<ISteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<ISteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<ISteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestHistoryServerList");

final _requestSpectatorServerList = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<ISteamMatchmakingServers>,
  UnsignedInt,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  UnsignedInt,
  Pointer<ISteamMatchmakingServerListResponse>,
),
    HServerListRequest Function(
  Pointer<ISteamMatchmakingServers>,
  AppId,
  Pointer<Pointer<MatchMakingKeyValuePair>>,
  int,
  Pointer<ISteamMatchmakingServerListResponse>,
)>("SteamAPI_ISteamMatchmakingServers_RequestSpectatorServerList");

final _releaseRequest = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingServers>,
  Pointer<Void>,
),
    void Function(
  Pointer<ISteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_ReleaseRequest");

final _getServerDetails = dl.lookupFunction<
    Pointer<GameServerItem> Function(
  Pointer<ISteamMatchmakingServers>,
  Pointer<Void>,
  Int,
),
    Pointer<GameServerItem> Function(
  Pointer<ISteamMatchmakingServers>,
  HServerListRequest,
  int,
)>("SteamAPI_ISteamMatchmakingServers_GetServerDetails");

final _cancelQuery = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingServers>,
  Pointer<Void>,
),
    void Function(
  Pointer<ISteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_CancelQuery");

final _refreshQuery = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingServers>,
  Pointer<Void>,
),
    void Function(
  Pointer<ISteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_RefreshQuery");

final _isRefreshing = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmakingServers>,
  Pointer<Void>,
),
    bool Function(
  Pointer<ISteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_IsRefreshing");

final _getServerCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamMatchmakingServers>,
  Pointer<Void>,
),
    int Function(
  Pointer<ISteamMatchmakingServers>,
  HServerListRequest,
)>("SteamAPI_ISteamMatchmakingServers_GetServerCount");

final _refreshServer = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingServers>,
  Pointer<Void>,
  Int,
),
    void Function(
  Pointer<ISteamMatchmakingServers>,
  HServerListRequest,
  int,
)>("SteamAPI_ISteamMatchmakingServers_RefreshServer");

final _pingServer = dl.lookupFunction<
    Int Function(
  Pointer<ISteamMatchmakingServers>,
  UnsignedInt,
  UnsignedShort,
  Pointer<ISteamMatchmakingPingResponse>,
),
    HServerQuery Function(
  Pointer<ISteamMatchmakingServers>,
  int,
  int,
  Pointer<ISteamMatchmakingPingResponse>,
)>("SteamAPI_ISteamMatchmakingServers_PingServer");

final _playerDetails = dl.lookupFunction<
    Int Function(
  Pointer<ISteamMatchmakingServers>,
  UnsignedInt,
  UnsignedShort,
  Pointer<ISteamMatchmakingPlayersResponse>,
),
    HServerQuery Function(
  Pointer<ISteamMatchmakingServers>,
  int,
  int,
  Pointer<ISteamMatchmakingPlayersResponse>,
)>("SteamAPI_ISteamMatchmakingServers_PlayerDetails");

final _serverRules = dl.lookupFunction<
    Int Function(
  Pointer<ISteamMatchmakingServers>,
  UnsignedInt,
  UnsignedShort,
  Pointer<ISteamMatchmakingRulesResponse>,
),
    HServerQuery Function(
  Pointer<ISteamMatchmakingServers>,
  int,
  int,
  Pointer<ISteamMatchmakingRulesResponse>,
)>("SteamAPI_ISteamMatchmakingServers_ServerRules");

final _cancelServerQuery = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingServers>,
  Int,
),
    void Function(
  Pointer<ISteamMatchmakingServers>,
  HServerQuery,
)>("SteamAPI_ISteamMatchmakingServers_CancelServerQuery");

extension ISteamMatchmakingServersExtensions
    on Pointer<ISteamMatchmakingServers> {
  HServerListRequest requestInternetServerList(
    AppId iApp,
    Pointer<Pointer<MatchMakingKeyValuePair>> ppchFilters,
    int nFilters,
    Pointer<ISteamMatchmakingServerListResponse> pRequestServersResponse,
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
    Pointer<ISteamMatchmakingServerListResponse> pRequestServersResponse,
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
    Pointer<ISteamMatchmakingServerListResponse> pRequestServersResponse,
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
    Pointer<ISteamMatchmakingServerListResponse> pRequestServersResponse,
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
    Pointer<ISteamMatchmakingServerListResponse> pRequestServersResponse,
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
    Pointer<ISteamMatchmakingServerListResponse> pRequestServersResponse,
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
    int ip,
    int port,
    Pointer<ISteamMatchmakingPingResponse> pRequestServersResponse,
  ) =>
      _pingServer.call(
        this,
        ip,
        port,
        pRequestServersResponse,
      );

  HServerQuery playerDetails(
    int ip,
    int port,
    Pointer<ISteamMatchmakingPlayersResponse> pRequestServersResponse,
  ) =>
      _playerDetails.call(
        this,
        ip,
        port,
        pRequestServersResponse,
      );

  HServerQuery serverRules(
    int ip,
    int port,
    Pointer<ISteamMatchmakingRulesResponse> pRequestServersResponse,
  ) =>
      _serverRules.call(
        this,
        ip,
        port,
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
