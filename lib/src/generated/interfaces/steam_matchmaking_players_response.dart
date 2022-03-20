import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";

class SteamMatchmakingPlayersResponse extends Opaque {}

final _addPlayerToList = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingPlayersResponse>,
  Pointer<Utf8>,
  Int,
  Float,
),
    void Function(
  Pointer<SteamMatchmakingPlayersResponse>,
  Pointer<Utf8>,
  int,
  double,
)>("SteamAPI_ISteamMatchmakingPlayersResponse_AddPlayerToList");

final _playersFailedToRespond = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingPlayersResponse>,
),
    void Function(
  Pointer<SteamMatchmakingPlayersResponse>,
)>("SteamAPI_ISteamMatchmakingPlayersResponse_PlayersFailedToRespond");

final _playersRefreshComplete = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingPlayersResponse>,
),
    void Function(
  Pointer<SteamMatchmakingPlayersResponse>,
)>("SteamAPI_ISteamMatchmakingPlayersResponse_PlayersRefreshComplete");

extension SteamMatchmakingPlayersResponseExtensions
    on Pointer<SteamMatchmakingPlayersResponse> {
  void addPlayerToList(
    Pointer<Utf8> name,
    int nScore,
    double timePlayed,
  ) =>
      _addPlayerToList.call(
        this,
        name,
        nScore,
        timePlayed,
      );

  void playersFailedToRespond() => _playersFailedToRespond.call(
        this,
      );

  void playersRefreshComplete() => _playersRefreshComplete.call(
        this,
      );
}
