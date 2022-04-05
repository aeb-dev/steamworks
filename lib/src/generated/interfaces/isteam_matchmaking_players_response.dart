// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";

class ISteamMatchmakingPlayersResponse extends Opaque {}

final _addPlayerToList = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingPlayersResponse>,
  Pointer<Utf8>,
  Int,
  Float,
),
    void Function(
  Pointer<ISteamMatchmakingPlayersResponse>,
  Pointer<Utf8>,
  int,
  double,
)>("SteamAPI_ISteamMatchmakingPlayersResponse_AddPlayerToList");

final _playersFailedToRespond = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingPlayersResponse>,
),
    void Function(
  Pointer<ISteamMatchmakingPlayersResponse>,
)>("SteamAPI_ISteamMatchmakingPlayersResponse_PlayersFailedToRespond");

final _playersRefreshComplete = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingPlayersResponse>,
),
    void Function(
  Pointer<ISteamMatchmakingPlayersResponse>,
)>("SteamAPI_ISteamMatchmakingPlayersResponse_PlayersRefreshComplete");

extension ISteamMatchmakingPlayersResponseExtensions
    on Pointer<ISteamMatchmakingPlayersResponse> {
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
