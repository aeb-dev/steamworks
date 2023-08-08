// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../dl.dart";
import "../structs/game_server_item.dart";

final class ISteamMatchmakingPingResponse extends Opaque {}

final _serverResponded = dl.lookupFunction<
    Void Function(
      Pointer<ISteamMatchmakingPingResponse>,
      Pointer<GameServerItem>,
    ),
    void Function(
      Pointer<ISteamMatchmakingPingResponse>,
      Pointer<GameServerItem>,
    )>("SteamAPI_ISteamMatchmakingPingResponse_ServerResponded");

final _serverFailedToRespond = dl.lookupFunction<
    Void Function(
      Pointer<ISteamMatchmakingPingResponse>,
    ),
    void Function(
      Pointer<ISteamMatchmakingPingResponse>,
    )>("SteamAPI_ISteamMatchmakingPingResponse_ServerFailedToRespond");

extension ISteamMatchmakingPingResponseExtensions
    on Pointer<ISteamMatchmakingPingResponse> {
  void serverResponded(
    Pointer<GameServerItem> server,
  ) =>
      _serverResponded.call(
        this,
        server,
      );

  void serverFailedToRespond() => _serverFailedToRespond.call(
        this,
      );
}
