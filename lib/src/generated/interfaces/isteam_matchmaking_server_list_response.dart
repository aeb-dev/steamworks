// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../dl.dart";
import "../enums/ematch_making_server_response.dart";
import "../typedefs.dart";

final class ISteamMatchmakingServerListResponse extends Opaque {}

final _serverResponded = dl.lookupFunction<
    Void Function(
      Pointer<ISteamMatchmakingServerListResponse>,
      Pointer<Void>,
      Int,
    ),
    void Function(
      Pointer<ISteamMatchmakingServerListResponse>,
      HServerListRequest,
      int,
    )>("SteamAPI_ISteamMatchmakingServerListResponse_ServerResponded");

final _serverFailedToRespond = dl.lookupFunction<
    Void Function(
      Pointer<ISteamMatchmakingServerListResponse>,
      Pointer<Void>,
      Int,
    ),
    void Function(
      Pointer<ISteamMatchmakingServerListResponse>,
      HServerListRequest,
      int,
    )>("SteamAPI_ISteamMatchmakingServerListResponse_ServerFailedToRespond");

final _refreshComplete = dl.lookupFunction<
    Void Function(
      Pointer<ISteamMatchmakingServerListResponse>,
      Pointer<Void>,
      EMatchMakingServerResponseAliasC,
    ),
    void Function(
      Pointer<ISteamMatchmakingServerListResponse>,
      HServerListRequest,
      EMatchMakingServerResponseAliasDart,
    )>("SteamAPI_ISteamMatchmakingServerListResponse_RefreshComplete");

extension ISteamMatchmakingServerListResponseExtensions
    on Pointer<ISteamMatchmakingServerListResponse> {
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
        response.value,
      );
}
