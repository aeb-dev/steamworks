import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/e_match_making_server_response.dart";
import "../typedefs.dart";

class SteamMatchmakingServerListResponse extends Opaque {}

final _serverResponded = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingServerListResponse>,
  Pointer<Void>,
  Int,
),
    void Function(
  Pointer<SteamMatchmakingServerListResponse>,
  HServerListRequest,
  int,
)>("SteamAPI_ISteamMatchmakingServerListResponse_ServerResponded");

final _serverFailedToRespond = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingServerListResponse>,
  Pointer<Void>,
  Int,
),
    void Function(
  Pointer<SteamMatchmakingServerListResponse>,
  HServerListRequest,
  int,
)>("SteamAPI_ISteamMatchmakingServerListResponse_ServerFailedToRespond");

final _refreshComplete = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingServerListResponse>,
  Pointer<Void>,
  Int32,
),
    void Function(
  Pointer<SteamMatchmakingServerListResponse>,
  HServerListRequest,
  EMatchMakingServerResponse,
)>("SteamAPI_ISteamMatchmakingServerListResponse_RefreshComplete");

extension SteamMatchmakingServerListResponseExtensions
    on Pointer<SteamMatchmakingServerListResponse> {
  void serverResponded(
    HServerListRequest hRequest,
    int iServer,
  ) =>
      _serverResponded.call(
        this,
        hRequest,
        iServer,
      );

  void serverFailedToRespond(
    HServerListRequest hRequest,
    int iServer,
  ) =>
      _serverFailedToRespond.call(
        this,
        hRequest,
        iServer,
      );

  void refreshComplete(
    HServerListRequest hRequest,
    EMatchMakingServerResponse response,
  ) =>
      _refreshComplete.call(
        this,
        hRequest,
        response,
      );
}
