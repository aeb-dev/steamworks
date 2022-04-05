// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/esteam_networking_fake_ip_type.dart";
import "../enums/esteam_networking_identity_type.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../typedefs.dart";

@Packed(1)
class SteamNetworkingIdentity extends Struct {
  static int get maxString => 128;
  static int get maxGenericString => 32;
  static int get maxXboxPairwiseId => 33;
  static int get maxGenericBytes => 32;
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

final _setSteamId = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  CSteamId,
)>("SteamAPI_SteamNetworkingIdentity_SetSteamID");

final _getSteamId = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamNetworkingIdentity>,
),
    CSteamId Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetSteamID");

final _setSteamId64 = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  int,
)>("SteamAPI_SteamNetworkingIdentity_SetSteamID64");

final _getSteamId64 = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamNetworkingIdentity>,
),
    int Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetSteamID64");

final _setXboxPairwiseId = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
)>("SteamAPI_SteamNetworkingIdentity_SetXboxPairwiseID");

final _getXboxPairwiseId = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamNetworkingIdentity>,
),
    Pointer<Utf8> Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetXboxPairwiseID");

final _setPsnId = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  int,
)>("SteamAPI_SteamNetworkingIdentity_SetPSNID");

final _getPsnId = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamNetworkingIdentity>,
),
    int Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetPSNID");

final _setStadiaId = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  int,
)>("SteamAPI_SteamNetworkingIdentity_SetStadiaID");

final _getStadiaId = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamNetworkingIdentity>,
),
    int Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetStadiaID");

final _setIpAddr = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIpAddr>,
),
    void Function(
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_SteamNetworkingIdentity_SetIPAddr");

final _getIpAddr = dl.lookupFunction<
    Pointer<SteamNetworkingIpAddr> Function(
  Pointer<SteamNetworkingIdentity>,
),
    Pointer<SteamNetworkingIpAddr> Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetIPAddr");

final _setIpv4Addr = dl.lookupFunction<
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

final _getIpv4 = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingIdentity>,
),
    int Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetIPv4");

final _getFakeIpType = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingIdentity>,
),
    ESteamNetworkingFakeIpType Function(
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_SteamNetworkingIdentity_GetFakeIPType");

final _isFakeIp = dl.lookupFunction<
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

  void setSteamId(
    CSteamId steamId,
  ) =>
      _setSteamId.call(
        this,
        steamId,
      );

  CSteamId getSteamId() => _getSteamId.call(
        this,
      );

  void setSteamId64(
    int steamId,
  ) =>
      _setSteamId64.call(
        this,
        steamId,
      );

  int getSteamId64() => _getSteamId64.call(
        this,
      );

  bool setXboxPairwiseId(
    Pointer<Utf8> pszString,
  ) =>
      _setXboxPairwiseId.call(
        this,
        pszString,
      );

  Pointer<Utf8> getXboxPairwiseId() => _getXboxPairwiseId.call(
        this,
      );

  void setPsnId(
    int id,
  ) =>
      _setPsnId.call(
        this,
        id,
      );

  int getPsnId() => _getPsnId.call(
        this,
      );

  void setStadiaId(
    int id,
  ) =>
      _setStadiaId.call(
        this,
        id,
      );

  int getStadiaId() => _getStadiaId.call(
        this,
      );

  void setIpAddr(
    Pointer<SteamNetworkingIpAddr> addr,
  ) =>
      _setIpAddr.call(
        this,
        addr,
      );

  Pointer<SteamNetworkingIpAddr> getIpAddr() => _getIpAddr.call(
        this,
      );

  void setIpv4Addr(
    int nIpv4,
    int nPort,
  ) =>
      _setIpv4Addr.call(
        this,
        nIpv4,
        nPort,
      );

  int getIpv4() => _getIpv4.call(
        this,
      );

  ESteamNetworkingFakeIpType getFakeIpType() => _getFakeIpType.call(
        this,
      );

  bool isFakeIp() => _isFakeIp.call(
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

  ESteamNetworkingIdentityType get type => ref.type;

  int get size => ref.size;

  Pointer<Utf8> get unknownRawString => ref.unknownRawString;
}
