import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_steam_networking_fake_ip_type.dart";
import "../enums/e_steam_networking_identity_type.dart";
import "../steam_api.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../typedefs.dart";

@Packed(4)
class SteamNetworkingIdentity extends Struct {
  static const int maxString = 128;
  static const int maxGenericString = 32;
  static const int maxXboxPairwiseId = 33;
  static const int maxGenericBytes = 32;
  @Int32()
  external ESteamNetworkingIdentityType type;

  @Int()
  external int size;

  external Pointer<Utf8> unknownRawString;
}

final _clear = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_Clear");

final _isInvalid = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_IsInvalid");

final _setSteamID = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  CSteamId,
)>("SteamAPI_SteamNetworkingIdentity_SetSteamID");

final _getSteamID = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamNetworkingIdentity>,
),
    CSteamId Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetSteamID");

final _setSteamID64 = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  int,
)>("SteamAPI_SteamNetworkingIdentity_SetSteamID64");

final _getSteamID64 = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamNetworkingIdentity>,
),
    int Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetSteamID64");

final _setXboxPairwiseID = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
)>("SteamAPI_SteamNetworkingIdentity_SetXboxPairwiseID");

final _getXboxPairwiseID = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamNetworkingIdentity>,
),
    Pointer<Utf8> Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetXboxPairwiseID");

final _setPSNID = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  int,
)>("SteamAPI_SteamNetworkingIdentity_SetPSNID");

final _getPSNID = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamNetworkingIdentity>,
),
    int Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetPSNID");

final _setStadiaID = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  int,
)>("SteamAPI_SteamNetworkingIdentity_SetStadiaID");

final _getStadiaID = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamNetworkingIdentity>,
),
    int Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetStadiaID");

final _setIPAddr = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIpAddr>,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIdentity_SetIPAddr");

final _getIPAddr = dl.lookupFunction<
    Pointer<SteamNetworkingIpAddr> Function(
  Pointer<SteamNetworkingIdentity>,
),
    Pointer<SteamNetworkingIpAddr> Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetIPAddr");

final _setIPv4Addr = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  UnsignedInt,
  UnsignedShort,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  int,
  int,
)>("SteamAPI_SteamNetworkingIdentity_SetIPv4Addr");

final _getIPv4 = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingIdentity>,
),
    int Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetIPv4");

final _getFakeIPType = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingIdentity>,
),
    ESteamNetworkingFakeIpType Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetFakeIPType");

final _isFakeIP = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_IsFakeIP");

final _setLocalHost = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_SetLocalHost");

final _isLocalHost = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_IsLocalHost");

final _setGenericString = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
)>("SteamAPI_SteamNetworkingIdentity_SetGenericString");

final _getGenericString = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamNetworkingIdentity>,
),
    Pointer<Utf8> Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetGenericString");

final _setGenericBytes = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Void>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Void>,
  int,
)>("SteamAPI_SteamNetworkingIdentity_SetGenericBytes");

final _getGenericBytes = dl.lookupFunction<
    Pointer<UnsignedChar> Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Int>,
),
    Pointer<UnsignedChar> Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Int>,
)>("SteamAPI_SteamNetworkingIdentity_GetGenericBytes");

final _isEqualTo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_IsEqualTo");

final _toString_ = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_SteamNetworkingIdentity_ToString");

final _parseString = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
)>("SteamAPI_SteamNetworkingIdentity_ParseString");

extension SteamNetworkingIdentityExtensions
    on Pointer<SteamNetworkingIdentity> {
  void clear() => _clear.call(
        this,
      );

  bool isInvalid() => _isInvalid.call(
        this,
      );

  void setSteamID(
    CSteamId steamID,
  ) =>
      _setSteamID.call(
        this,
        steamID,
      );

  CSteamId getSteamID() => _getSteamID.call(
        this,
      );

  void setSteamID64(
    int steamID,
  ) =>
      _setSteamID64.call(
        this,
        steamID,
      );

  int getSteamID64() => _getSteamID64.call(
        this,
      );

  bool setXboxPairwiseID(
    Pointer<Utf8> pszString,
  ) =>
      _setXboxPairwiseID.call(
        this,
        pszString,
      );

  Pointer<Utf8> getXboxPairwiseID() => _getXboxPairwiseID.call(
        this,
      );

  void setPSNID(
    int id,
  ) =>
      _setPSNID.call(
        this,
        id,
      );

  int getPSNID() => _getPSNID.call(
        this,
      );

  void setStadiaID(
    int id,
  ) =>
      _setStadiaID.call(
        this,
        id,
      );

  int getStadiaID() => _getStadiaID.call(
        this,
      );

  void setIPAddr(
    Pointer<SteamNetworkingIpAddr> addr,
  ) =>
      _setIPAddr.call(
        this,
        addr,
      );

  Pointer<SteamNetworkingIpAddr> getIPAddr() => _getIPAddr.call(
        this,
      );

  void setIPv4Addr(
    int nIPv4,
    int nPort,
  ) =>
      _setIPv4Addr.call(
        this,
        nIPv4,
        nPort,
      );

  int getIPv4() => _getIPv4.call(
        this,
      );

  ESteamNetworkingFakeIpType getFakeIPType() => _getFakeIPType.call(
        this,
      );

  bool isFakeIP() => _isFakeIP.call(
        this,
      );

  void setLocalHost() => _setLocalHost.call(
        this,
      );

  bool isLocalHost() => _isLocalHost.call(
        this,
      );

  bool setGenericString(
    Pointer<Utf8> pszString,
  ) =>
      _setGenericString.call(
        this,
        pszString,
      );

  Pointer<Utf8> getGenericString() => _getGenericString.call(
        this,
      );

  bool setGenericBytes(
    Pointer<Void> data,
    int cbLen,
  ) =>
      _setGenericBytes.call(
        this,
        data,
        cbLen,
      );

  Pointer<UnsignedChar> getGenericBytes(
    Pointer<Int> cbLen,
  ) =>
      _getGenericBytes.call(
        this,
        cbLen,
      );

  bool isEqualTo(
    Pointer<SteamNetworkingIdentity> x,
  ) =>
      _isEqualTo.call(
        this,
        x,
      );

  void toString_(
    Pointer<Utf8> buf,
    int cbBuf,
  ) =>
      _toString_.call(
        this,
        buf,
        cbBuf,
      );

  bool parseString(
    Pointer<Utf8> pszStr,
  ) =>
      _parseString.call(
        this,
        pszStr,
      );
}
