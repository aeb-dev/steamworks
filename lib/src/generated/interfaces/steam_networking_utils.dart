import "dart:ffi";

import "package:ffi/ffi.dart";

import "../callback_structs/steam_relay_network_status.dart";
import "../enums/e_result.dart";
import "../enums/e_steam_networking_availability.dart";
import "../enums/e_steam_networking_config_data_type.dart";
import "../enums/e_steam_networking_config_scope.dart";
import "../enums/e_steam_networking_config_value.dart";
import "../enums/e_steam_networking_fake_ip_type.dart";
import "../enums/e_steam_networking_get_config_value_result.dart";
import "../steam_api.dart";
import "../structs/steam_network_ping_location.dart";
import "../structs/steam_networking_config_value.dart";
import "../structs/steam_networking_identity.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../structs/steam_networking_message.dart";
import "../typedefs.dart";

class SteamNetworkingUtils extends Opaque {
  static Pointer<SteamNetworkingUtils> steamNetworkingUtilsSteamApi() =>
      nullptr;
}

final _allocateMessage = dl.lookupFunction<
    Pointer<SteamNetworkingMessage> Function(
  Pointer<SteamNetworkingUtils>,
  Int,
),
    Pointer<SteamNetworkingMessage> Function(
  Pointer<SteamNetworkingUtils>,
  int,
)>("SteamAPI_ISteamNetworkingUtils_AllocateMessage");

final _initRelayNetworkAccess = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingUtils>,
),
    void Function(
  Pointer<SteamNetworkingUtils>,
)>("SteamAPI_ISteamNetworkingUtils_InitRelayNetworkAccess");

final _getRelayNetworkStatus = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamRelayNetworkStatus>,
),
    ESteamNetworkingAvailability Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamRelayNetworkStatus>,
)>("SteamAPI_ISteamNetworkingUtils_GetRelayNetworkStatus");

final _getLocalPingLocation = dl.lookupFunction<
    Float Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkPingLocation>,
),
    double Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkPingLocation>,
)>("SteamAPI_ISteamNetworkingUtils_GetLocalPingLocation");

final _estimatePingTimeBetweenTwoLocations = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkPingLocation>,
  Pointer<SteamNetworkPingLocation>,
),
    int Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkPingLocation>,
  Pointer<SteamNetworkPingLocation>,
)>("SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations");

final _estimatePingTimeFromLocalHost = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkPingLocation>,
),
    int Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkPingLocation>,
)>("SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost");

final _convertPingLocationToString = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkPingLocation>,
  Pointer<Utf8>,
  Int,
),
    void Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkPingLocation>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString");

final _parsePingLocationString = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<Utf8>,
  Pointer<SteamNetworkPingLocation>,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<Utf8>,
  Pointer<SteamNetworkPingLocation>,
)>("SteamAPI_ISteamNetworkingUtils_ParsePingLocationString");

final _checkPingDataUpToDate = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Float,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  double,
)>("SteamAPI_ISteamNetworkingUtils_CheckPingDataUpToDate");

final _getPingToDataCenter = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingUtils>,
  UnsignedInt,
  Pointer<UnsignedInt>,
),
    int Function(
  Pointer<SteamNetworkingUtils>,
  SteamNetworkingPOPId,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamNetworkingUtils_GetPingToDataCenter");

final _getDirectPingToPOP = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingUtils>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamNetworkingUtils>,
  SteamNetworkingPOPId,
)>("SteamAPI_ISteamNetworkingUtils_GetDirectPingToPOP");

final _getPOPCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingUtils>,
),
    int Function(
  Pointer<SteamNetworkingUtils>,
)>("SteamAPI_ISteamNetworkingUtils_GetPOPCount");

final _getPOPList = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<UnsignedInt>,
  Int,
),
    int Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamNetworkingUtils_GetPOPList");

final _getLocalTimestamp = dl.lookupFunction<
    LongLong Function(
  Pointer<SteamNetworkingUtils>,
),
    SteamNetworkingMicroseconds Function(
  Pointer<SteamNetworkingUtils>,
)>("SteamAPI_ISteamNetworkingUtils_GetLocalTimestamp");

final _isFakeIPv4 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  int,
)>("SteamAPI_ISteamNetworkingUtils_IsFakeIPv4");

final _getIPv4FakeIPType = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingUtils>,
  UnsignedInt,
),
    ESteamNetworkingFakeIpType Function(
  Pointer<SteamNetworkingUtils>,
  int,
)>("SteamAPI_ISteamNetworkingUtils_GetIPv4FakeIPType");

final _getRealIdentityForFakeIP = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIpAddr>,
  Pointer<SteamNetworkingIdentity>,
),
    EResult Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIpAddr>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP");

final _setGlobalConfigValueInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Int32,
  Int,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  ESteamNetworkingConfigValue,
  int,
)>("SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueInt32");

final _setGlobalConfigValueFloat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Int32,
  Float,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  ESteamNetworkingConfigValue,
  double,
)>("SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueFloat");

final _setGlobalConfigValueString = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Int32,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  ESteamNetworkingConfigValue,
  Pointer<Utf8>,
)>("SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueString");

final _setGlobalConfigValuePtr = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Int32,
  Pointer<Void>,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  ESteamNetworkingConfigValue,
  Pointer<Void>,
)>("SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValuePtr");

final _setConnectionConfigValueInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  UnsignedInt,
  Int32,
  Int,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  HSteamNetConnection,
  ESteamNetworkingConfigValue,
  int,
)>("SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueInt32");

final _setConnectionConfigValueFloat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  UnsignedInt,
  Int32,
  Float,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  HSteamNetConnection,
  ESteamNetworkingConfigValue,
  double,
)>("SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueFloat");

final _setConnectionConfigValueString = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  UnsignedInt,
  Int32,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  HSteamNetConnection,
  ESteamNetworkingConfigValue,
  Pointer<Utf8>,
)>("SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueString");

final _setConfigValue = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Int32,
  Int32,
  IntPtr,
  Int32,
  Pointer<Void>,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  ESteamNetworkingConfigValue,
  ESteamNetworkingConfigScope,
  int,
  ESteamNetworkingConfigDataType,
  Pointer<Void>,
)>("SteamAPI_ISteamNetworkingUtils_SetConfigValue");

final _setConfigValueStruct = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingConfigValue>,
  Int32,
  IntPtr,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingConfigValue>,
  ESteamNetworkingConfigScope,
  int,
)>("SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct");

final _getConfigValue = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingUtils>,
  Int32,
  Int32,
  IntPtr,
  Pointer<Int32>,
  Pointer<Void>,
  Pointer<Size>,
),
    ESteamNetworkingGetConfigValueResult Function(
  Pointer<SteamNetworkingUtils>,
  ESteamNetworkingConfigValue,
  ESteamNetworkingConfigScope,
  int,
  Pointer<Int32>,
  Pointer<Void>,
  Pointer<Size>,
)>("SteamAPI_ISteamNetworkingUtils_GetConfigValue");

final _getConfigValueInfo = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamNetworkingUtils>,
  Int32,
  Pointer<Int32>,
  Pointer<Int32>,
),
    Pointer<Utf8> Function(
  Pointer<SteamNetworkingUtils>,
  ESteamNetworkingConfigValue,
  Pointer<Int32>,
  Pointer<Int32>,
)>("SteamAPI_ISteamNetworkingUtils_GetConfigValueInfo");

final _iterateGenericEditableConfigValues = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingUtils>,
  Int32,
  Bool,
),
    ESteamNetworkingConfigValue Function(
  Pointer<SteamNetworkingUtils>,
  ESteamNetworkingConfigValue,
  bool,
)>("SteamAPI_ISteamNetworkingUtils_IterateGenericEditableConfigValues");

final _steamNetworkingIPAddrToString = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Utf8>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Utf8>,
  int,
  bool,
)>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString");

final _steamNetworkingIPAddrParseString = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ParseString");

final _steamNetworkingIPAddrGetFakeIPType = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIpAddr>,
),
    ESteamNetworkingFakeIpType Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType");

final _steamNetworkingIdentityToString = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString");

final _steamNetworkingIdentityParseString = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamNetworkingUtils>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ParseString");

extension SteamNetworkingUtilsExtensions on Pointer<SteamNetworkingUtils> {
  Pointer<SteamNetworkingMessage> allocateMessage(
    int cbAllocateBuffer,
  ) =>
      _allocateMessage.call(
        this,
        cbAllocateBuffer,
      );

  void initRelayNetworkAccess() => _initRelayNetworkAccess.call(
        this,
      );

  ESteamNetworkingAvailability getRelayNetworkStatus(
    Pointer<SteamRelayNetworkStatus> pDetails,
  ) =>
      _getRelayNetworkStatus.call(
        this,
        pDetails,
      );

  double getLocalPingLocation(
    Pointer<SteamNetworkPingLocation> result,
  ) =>
      _getLocalPingLocation.call(
        this,
        result,
      );

  int estimatePingTimeBetweenTwoLocations(
    Pointer<SteamNetworkPingLocation> location1,
    Pointer<SteamNetworkPingLocation> location2,
  ) =>
      _estimatePingTimeBetweenTwoLocations.call(
        this,
        location1,
        location2,
      );

  int estimatePingTimeFromLocalHost(
    Pointer<SteamNetworkPingLocation> remoteLocation,
  ) =>
      _estimatePingTimeFromLocalHost.call(
        this,
        remoteLocation,
      );

  void convertPingLocationToString(
    Pointer<SteamNetworkPingLocation> location,
    Pointer<Utf8> pszBuf,
    int cchBufSize,
  ) =>
      _convertPingLocationToString.call(
        this,
        location,
        pszBuf,
        cchBufSize,
      );

  bool parsePingLocationString(
    Pointer<Utf8> pszString,
    Pointer<SteamNetworkPingLocation> result,
  ) =>
      _parsePingLocationString.call(
        this,
        pszString,
        result,
      );

  bool checkPingDataUpToDate(
    double flMaxAgeSeconds,
  ) =>
      _checkPingDataUpToDate.call(
        this,
        flMaxAgeSeconds,
      );

  int getPingToDataCenter(
    SteamNetworkingPOPId popID,
    Pointer<UnsignedInt> pViaRelayPoP,
  ) =>
      _getPingToDataCenter.call(
        this,
        popID,
        pViaRelayPoP,
      );

  int getDirectPingToPOP(
    SteamNetworkingPOPId popID,
  ) =>
      _getDirectPingToPOP.call(
        this,
        popID,
      );

  int getPOPCount() => _getPOPCount.call(
        this,
      );

  int getPOPList(
    Pointer<UnsignedInt> list,
    int nListSz,
  ) =>
      _getPOPList.call(
        this,
        list,
        nListSz,
      );

  SteamNetworkingMicroseconds getLocalTimestamp() => _getLocalTimestamp.call(
        this,
      );

  bool isFakeIPv4(
    int nIPv4,
  ) =>
      _isFakeIPv4.call(
        this,
        nIPv4,
      );

  ESteamNetworkingFakeIpType getIPv4FakeIPType(
    int nIPv4,
  ) =>
      _getIPv4FakeIPType.call(
        this,
        nIPv4,
      );

  EResult getRealIdentityForFakeIP(
    Pointer<SteamNetworkingIpAddr> fakeIP,
    Pointer<SteamNetworkingIdentity> pOutRealIdentity,
  ) =>
      _getRealIdentityForFakeIP.call(
        this,
        fakeIP,
        pOutRealIdentity,
      );

  bool setGlobalConfigValueInt32(
    ESteamNetworkingConfigValue eValue,
    int val,
  ) =>
      _setGlobalConfigValueInt32.call(
        this,
        eValue,
        val,
      );

  bool setGlobalConfigValueFloat(
    ESteamNetworkingConfigValue eValue,
    double val,
  ) =>
      _setGlobalConfigValueFloat.call(
        this,
        eValue,
        val,
      );

  bool setGlobalConfigValueString(
    ESteamNetworkingConfigValue eValue,
    Pointer<Utf8> val,
  ) =>
      _setGlobalConfigValueString.call(
        this,
        eValue,
        val,
      );

  bool setGlobalConfigValuePtr(
    ESteamNetworkingConfigValue eValue,
    Pointer<Void> val,
  ) =>
      _setGlobalConfigValuePtr.call(
        this,
        eValue,
        val,
      );

  bool setConnectionConfigValueInt32(
    HSteamNetConnection hConn,
    ESteamNetworkingConfigValue eValue,
    int val,
  ) =>
      _setConnectionConfigValueInt32.call(
        this,
        hConn,
        eValue,
        val,
      );

  bool setConnectionConfigValueFloat(
    HSteamNetConnection hConn,
    ESteamNetworkingConfigValue eValue,
    double val,
  ) =>
      _setConnectionConfigValueFloat.call(
        this,
        hConn,
        eValue,
        val,
      );

  bool setConnectionConfigValueString(
    HSteamNetConnection hConn,
    ESteamNetworkingConfigValue eValue,
    Pointer<Utf8> val,
  ) =>
      _setConnectionConfigValueString.call(
        this,
        hConn,
        eValue,
        val,
      );

  bool setConfigValue(
    ESteamNetworkingConfigValue eValue,
    ESteamNetworkingConfigScope eScopeType,
    int scopeObj,
    ESteamNetworkingConfigDataType eDataType,
    Pointer<Void> pArg,
  ) =>
      _setConfigValue.call(
        this,
        eValue,
        eScopeType,
        scopeObj,
        eDataType,
        pArg,
      );

  bool setConfigValueStruct(
    Pointer<SteamNetworkingConfigValue> opt,
    ESteamNetworkingConfigScope eScopeType,
    int scopeObj,
  ) =>
      _setConfigValueStruct.call(
        this,
        opt,
        eScopeType,
        scopeObj,
      );

  ESteamNetworkingGetConfigValueResult getConfigValue(
    ESteamNetworkingConfigValue eValue,
    ESteamNetworkingConfigScope eScopeType,
    int scopeObj,
    Pointer<Int32> pOutDataType,
    Pointer<Void> pResult,
    Pointer<Size> cbResult,
  ) =>
      _getConfigValue.call(
        this,
        eValue,
        eScopeType,
        scopeObj,
        pOutDataType,
        pResult,
        cbResult,
      );

  Pointer<Utf8> getConfigValueInfo(
    ESteamNetworkingConfigValue eValue,
    Pointer<Int32> pOutDataType,
    Pointer<Int32> pOutScope,
  ) =>
      _getConfigValueInfo.call(
        this,
        eValue,
        pOutDataType,
        pOutScope,
      );

  ESteamNetworkingConfigValue iterateGenericEditableConfigValues(
    ESteamNetworkingConfigValue eCurrent,
    bool bEnumerateDevVars,
  ) =>
      _iterateGenericEditableConfigValues.call(
        this,
        eCurrent,
        bEnumerateDevVars,
      );

  void steamNetworkingIPAddrToString(
    Pointer<SteamNetworkingIpAddr> addr,
    Pointer<Utf8> buf,
    int cbBuf,
    bool bWithPort,
  ) =>
      _steamNetworkingIPAddrToString.call(
        this,
        addr,
        buf,
        cbBuf,
        bWithPort,
      );

  bool steamNetworkingIPAddrParseString(
    Pointer<SteamNetworkingIpAddr> pAddr,
    Pointer<Utf8> pszStr,
  ) =>
      _steamNetworkingIPAddrParseString.call(
        this,
        pAddr,
        pszStr,
      );

  ESteamNetworkingFakeIpType steamNetworkingIPAddrGetFakeIPType(
    Pointer<SteamNetworkingIpAddr> addr,
  ) =>
      _steamNetworkingIPAddrGetFakeIPType.call(
        this,
        addr,
      );

  void steamNetworkingIdentityToString(
    Pointer<SteamNetworkingIdentity> identity,
    Pointer<Utf8> buf,
    int cbBuf,
  ) =>
      _steamNetworkingIdentityToString.call(
        this,
        identity,
        buf,
        cbBuf,
      );

  bool steamNetworkingIdentityParseString(
    Pointer<SteamNetworkingIdentity> pIdentity,
    Pointer<Utf8> pszStr,
  ) =>
      _steamNetworkingIdentityParseString.call(
        this,
        pIdentity,
        pszStr,
      );
}
