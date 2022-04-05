// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";

@Packed(4)
class ServerNetAdr extends Struct {
  @UnsignedShort()
  // ignore: unused_field
  external int _connectionPort;

  @UnsignedShort()
  // ignore: unused_field
  external int _queryPort;

  @UnsignedInt()
  // ignore: unused_field
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

final _getIp = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ServerNetAdr>,
),
    int Function(
  Pointer<ServerNetAdr>,
)>("SteamAPI_servernetadr_t_GetIP");

final _setIp = dl.lookupFunction<
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
    int queryPort,
    int connectionPort,
  ) =>
      _init.call(
        this,
        ip,
        queryPort,
        connectionPort,
      );

  int getQueryPort() => _getQueryPort.call(
        this,
      );

  void setQueryPort(
    int port,
  ) =>
      _setQueryPort.call(
        this,
        port,
      );

  int getConnectionPort() => _getConnectionPort.call(
        this,
      );

  void setConnectionPort(
    int port,
  ) =>
      _setConnectionPort.call(
        this,
        port,
      );

  int getIp() => _getIp.call(
        this,
      );

  void setIp(
    int ip,
  ) =>
      _setIp.call(
        this,
        ip,
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
