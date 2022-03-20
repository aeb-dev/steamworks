import "dart:ffi";

import "../dl.dart";
import "../structs/game_server_item.dart";

class SteamMatchmakingPingResponse extends Opaque {}

final _serverResponded = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingPingResponse>,
  Pointer<GameServerItem>,
),
    void Function(
  Pointer<SteamMatchmakingPingResponse>,
  Pointer<GameServerItem>,
)>("SteamAPI_ISteamMatchmakingPingResponse_ServerResponded");

final _serverFailedToRespond = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingPingResponse>,
),
    void Function(
  Pointer<SteamMatchmakingPingResponse>,
)>("SteamAPI_ISteamMatchmakingPingResponse_ServerFailedToRespond");

extension SteamMatchmakingPingResponseExtensions
    on Pointer<SteamMatchmakingPingResponse> {
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
