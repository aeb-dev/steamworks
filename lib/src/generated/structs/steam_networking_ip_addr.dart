import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_steam_networking_fake_ip_type.dart";
import "../steam_api.dart";

@Packed(4)
class SteamNetworkingIpAddr extends Struct {
  static const int maxString = 48;
  @Array<UnsignedChar>(16)
  external Array<UnsignedChar> pv6;

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

final _isIPv6AllZeros = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIpAddr>,
),
    bool Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_IsIPv6AllZeros");

final _setIPv6 = dl.lookupFunction<
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

final _setIPv4 = dl.lookupFunction<
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

final _isIPv4 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIpAddr>,
),
    bool Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_IsIPv4");

final _getIPv4 = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingIpAddr>,
),
    int Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_GetIPv4");

final _setIPv6LocalHost = dl.lookupFunction<
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

final _getFakeIPType = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingIpAddr>,
),
    ESteamNetworkingFakeIpType Function(
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIPAddr_GetFakeIPType");

final _isFakeIP = dl.lookupFunction<
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

  bool isIPv6AllZeros() => _isIPv6AllZeros.call(
        this,
      );

  void setIPv6(
    Pointer<UnsignedChar> ipv6,
    int nPort,
  ) =>
      _setIPv6.call(
        this,
        ipv6,
        nPort,
      );

  void setIPv4(
    int nIP,
    int nPort,
  ) =>
      _setIPv4.call(
        this,
        nIP,
        nPort,
      );

  bool isIPv4() => _isIPv4.call(
        this,
      );

  int getIPv4() => _getIPv4.call(
        this,
      );

  void setIPv6LocalHost(
    int nPort,
  ) =>
      _setIPv6LocalHost.call(
        this,
        nPort,
      );

  bool isLocalHost() => _isLocalHost.call(
        this,
      );

  void toString_(
    Pointer<Utf8> buf,
    int cbBuf,
    bool bWithPort,
  ) =>
      _toString_.call(
        this,
        buf,
        cbBuf,
        bWithPort,
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

  ESteamNetworkingFakeIpType getFakeIPType() => _getFakeIPType.call(
        this,
      );

  bool isFakeIP() => _isFakeIP.call(
        this,
      );
}
