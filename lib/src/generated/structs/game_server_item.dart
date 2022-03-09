import "dart:ffi";

import "package:ffi/ffi.dart";

import "../steam_api.dart";
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
}
