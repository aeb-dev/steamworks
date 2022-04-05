// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/esteam_networking_fake_ip_type.dart";

@Packed(1)
class SteamNetworkingIpAddr extends Struct {
  static int get maxString => 48;
  @Array<UnsignedChar>(16)
  external Array<UnsignedChar> ipv6;

  @UnsignedShort()
  external int port;
}

final _clear = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIpAddr>,
),
    void Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_Clear");

final _isIpv6AllZeros = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIpAddr>,
),
    bool Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_IsIPv6AllZeros");

final _setIpv6 = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIpAddr>,
  Pointer<UnsignedChar>,
  UnsignedShort,
),
    void Function(
  Pointer<SteamNetworkingIpAddr>,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_SteamNetworkingIPAddr_SetIPv6");

final _setIpv4 = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIpAddr>,
  UnsignedInt,
  UnsignedShort,
),
    void Function(
  Pointer<SteamNetworkingIpAddr>,
  int,
  int,
)>("SteamAPI_SteamNetworkingIPAddr_SetIPv4");

final _isIpv4 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIpAddr>,
),
    bool Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_IsIPv4");

final _getIpv4 = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingIpAddr>,
),
    int Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_GetIPv4");

final _setIpv6LocalHost = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIpAddr>,
  UnsignedShort,
),
    void Function(
  Pointer<SteamNetworkingIpAddr>,
  int,
)>("SteamAPI_SteamNetworkingIPAddr_SetIPv6LocalHost");

final _isLocalHost = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIpAddr>,
),
    bool Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_IsLocalHost");

final _toString_ = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Utf8>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Utf8>,
  int,
  bool,
)>("SteamAPI_SteamNetworkingIPAddr_ToString");

final _parseString = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Utf8>,
)>("SteamAPI_SteamNetworkingIPAddr_ParseString");

final _isEqualTo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIpAddr>,
  Pointer<SteamNetworkingIpAddr>,
),
    bool Function(
  Pointer<SteamNetworkingIpAddr>,
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_IsEqualTo");

final _getFakeIpType = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingIpAddr>,
),
    ESteamNetworkingFakeIpType Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_GetFakeIPType");

final _isFakeIp = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIpAddr>,
),
    bool Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_IsFakeIP");

extension SteamNetworkingIpAddrExtensions on Pointer<SteamNetworkingIpAddr> {
  void clear() => _clear.call(
        this,
      );

  bool isIpv6AllZeros() => _isIpv6AllZeros.call(
        this,
      );

  void setIpv6(
    Pointer<UnsignedChar> ipv6,
    int nPort,
  ) =>
      _setIpv6.call(
        this,
        ipv6,
        nPort,
      );

  void setIpv4(
    int nIp,
    int nPort,
  ) =>
      _setIpv4.call(
        this,
        nIp,
        nPort,
      );

  bool isIpv4() => _isIpv4.call(
        this,
      );

  int getIpv4() => _getIpv4.call(
        this,
      );

  void setIpv6LocalHost(
    int nPort,
  ) =>
      _setIpv6LocalHost.call(
        this,
        nPort,
      );

  bool isLocalHost() => _isLocalHost.call(
        this,
      );

  void toString_(
    Pointer<Utf8> buf,
    int cbBuf,
    bool withPort,
  ) =>
      _toString_.call(
        this,
        buf,
        cbBuf,
        withPort,
      );

  bool parseString(
    Pointer<Utf8> pszStr,
  ) =>
      _parseString.call(
        this,
        pszStr,
      );

  bool isEqualTo(
    Pointer<SteamNetworkingIpAddr> x,
  ) =>
      _isEqualTo.call(
        this,
        x,
      );

  ESteamNetworkingFakeIpType getFakeIpType() => _getFakeIpType.call(
        this,
      );

  bool isFakeIp() => _isFakeIp.call(
        this,
      );

  Array<UnsignedChar> get ipv6 => ref.ipv6;

  int get port => ref.port;
}
