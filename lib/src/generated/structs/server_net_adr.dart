import "dart:ffi";

import "package:ffi/ffi.dart";

import "../steam_api.dart";

@Packed(4)
class ServerNetAdr extends Struct {
  @UnsignedShort()
  external int _connectionPort;

  @UnsignedShort()
  external int _queryPort;

  @UnsignedInt()
  external int _ip;
}

final _construct = dl.lookupFunction<
    Void Function(
  Pointer<ServerNetAdr>,
),
    void Function(
  Pointer<ServerNetAdr>,
)>("SteamAPI_servernetadr_t_Construct");

final _init = dl.lookupFunction<
    Void Function(
  Pointer<ServerNetAdr>,
  UnsignedInt,
  UnsignedShort,
  UnsignedShort,
),
    void Function(
  Pointer<ServerNetAdr>,
  int,
  int,
  int,
)>("SteamAPI_servernetadr_t_Init");

final _getQueryPort = dl.lookupFunction<
    UnsignedShort Function(
  Pointer<ServerNetAdr>,
),
    int Function(
  Pointer<ServerNetAdr>,
)>("SteamAPI_servernetadr_t_GetQueryPort");

final _setQueryPort = dl.lookupFunction<
    Void Function(
  Pointer<ServerNetAdr>,
  UnsignedShort,
),
    void Function(
  Pointer<ServerNetAdr>,
  int,
)>("SteamAPI_servernetadr_t_SetQueryPort");

final _getConnectionPort = dl.lookupFunction<
    UnsignedShort Function(
  Pointer<ServerNetAdr>,
),
    int Function(
  Pointer<ServerNetAdr>,
)>("SteamAPI_servernetadr_t_GetConnectionPort");

final _setConnectionPort = dl.lookupFunction<
    Void Function(
  Pointer<ServerNetAdr>,
  UnsignedShort,
),
    void Function(
  Pointer<ServerNetAdr>,
  int,
)>("SteamAPI_servernetadr_t_SetConnectionPort");

final _getIP = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ServerNetAdr>,
),
    int Function(
  Pointer<ServerNetAdr>,
)>("SteamAPI_servernetadr_t_GetIP");

final _setIP = dl.lookupFunction<
    Void Function(
  Pointer<ServerNetAdr>,
  UnsignedInt,
),
    void Function(
  Pointer<ServerNetAdr>,
  int,
)>("SteamAPI_servernetadr_t_SetIP");

final _getConnectionAddressString = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ServerNetAdr>,
),
    Pointer<Utf8> Function(
  Pointer<ServerNetAdr>,
)>("SteamAPI_servernetadr_t_GetConnectionAddressString");

final _getQueryAddressString = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ServerNetAdr>,
),
    Pointer<Utf8> Function(
  Pointer<ServerNetAdr>,
)>("SteamAPI_servernetadr_t_GetQueryAddressString");

final _isLessThan = dl.lookupFunction<
    Bool Function(
  Pointer<ServerNetAdr>,
  Pointer<ServerNetAdr>,
),
    bool Function(
  Pointer<ServerNetAdr>,
  Pointer<ServerNetAdr>,
)>("SteamAPI_servernetadr_t_IsLessThan");

final _assign = dl.lookupFunction<
    Void Function(
  Pointer<ServerNetAdr>,
  Pointer<ServerNetAdr>,
),
    void Function(
  Pointer<ServerNetAdr>,
  Pointer<ServerNetAdr>,
)>("SteamAPI_servernetadr_t_Assign");

extension ServerNetAdrExtensions on Pointer<ServerNetAdr> {
  void construct() => _construct.call(
        this,
      );

  void init(
    int ip,
    int usQueryPort,
    int usConnectionPort,
  ) =>
      _init.call(
        this,
        ip,
        usQueryPort,
        usConnectionPort,
      );

  int getQueryPort() => _getQueryPort.call(
        this,
      );

  void setQueryPort(
    int usPort,
  ) =>
      _setQueryPort.call(
        this,
        usPort,
      );

  int getConnectionPort() => _getConnectionPort.call(
        this,
      );

  void setConnectionPort(
    int usPort,
  ) =>
      _setConnectionPort.call(
        this,
        usPort,
      );

  int getIP() => _getIP.call(
        this,
      );

  void setIP(
    int unIP,
  ) =>
      _setIP.call(
        this,
        unIP,
      );

  Pointer<Utf8> getConnectionAddressString() =>
      _getConnectionAddressString.call(
        this,
      );

  Pointer<Utf8> getQueryAddressString() => _getQueryAddressString.call(
        this,
      );

  bool isLessThan(
    Pointer<ServerNetAdr> netadr,
  ) =>
      _isLessThan.call(
        this,
        netadr,
      );

  void assign(
    Pointer<ServerNetAdr> that,
  ) =>
      _assign.call(
        this,
        that,
      );
}
