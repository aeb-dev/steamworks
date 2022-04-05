// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../structs/server_net_adr.dart";
import "../typedefs.dart";

@Packed(4)
class GameServerItem extends Struct {
  external ServerNetAdr netAdr;

  @Int()
  external int ping;

  @Bool()
  external bool hadSuccessfulResponse;

  @Bool()
  external bool doNotRefresh;

  external Pointer<Utf8> gameDir;

  external Pointer<Utf8> map;

  external Pointer<Utf8> gameDescription;

  @UnsignedInt()
  external int appId;

  @Int()
  external int players;

  @Int()
  external int maxPlayers;

  @Int()
  external int botPlayers;

  @Bool()
  external bool password;

  @Bool()
  external bool secure;

  @UnsignedInt()
  external int timeLastPlayed;

  @Int()
  external int serverVersion;

  // ignore: unused_field
  external Pointer<Utf8> _serverName;

  external Pointer<Utf8> gameTags;

  @UnsignedLongLong()
  external CSteamId steamId;
}

final _construct = dl.lookupFunction<
    Void Function(
  Pointer<GameServerItem>,
),
    void Function(
  Pointer<GameServerItem>,
)>("SteamAPI_gameserveritem_t_Construct");

final _getName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<GameServerItem>,
),
    Pointer<Utf8> Function(
  Pointer<GameServerItem>,
)>("SteamAPI_gameserveritem_t_GetName");

final _setName = dl.lookupFunction<
    Void Function(
  Pointer<GameServerItem>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<GameServerItem>,
  Pointer<Utf8>,
)>("SteamAPI_gameserveritem_t_SetName");

extension GameServerItemExtensions on Pointer<GameServerItem> {
  void construct() => _construct.call(
        this,
      );

  Pointer<Utf8> getName() => _getName.call(
        this,
      );

  void setName(
    Pointer<Utf8> pName,
  ) =>
      _setName.call(
        this,
        pName,
      );

  ServerNetAdr get netAdr => ref.netAdr;

  int get ping => ref.ping;

  bool get hadSuccessfulResponse => ref.hadSuccessfulResponse;

  bool get doNotRefresh => ref.doNotRefresh;

  Pointer<Utf8> get gameDir => ref.gameDir;

  Pointer<Utf8> get map => ref.map;

  Pointer<Utf8> get gameDescription => ref.gameDescription;

  int get appId => ref.appId;

  int get players => ref.players;

  int get maxPlayers => ref.maxPlayers;

  int get botPlayers => ref.botPlayers;

  bool get password => ref.password;

  bool get secure => ref.secure;

  int get timeLastPlayed => ref.timeLastPlayed;

  int get serverVersion => ref.serverVersion;

  Pointer<Utf8> get gameTags => ref.gameTags;

  CSteamId get steamId => ref.steamId;
}
