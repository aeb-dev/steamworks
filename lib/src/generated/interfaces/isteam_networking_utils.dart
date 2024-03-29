// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../callback_structs/steam_relay_network_status.dart";
import "../dl.dart";
import "../enums/eresult.dart";
import "../enums/esteam_networking_availability.dart";
import "../enums/esteam_networking_config_data_type.dart";
import "../enums/esteam_networking_config_scope.dart";
import "../enums/esteam_networking_config_value.dart";
import "../enums/esteam_networking_fake_ip_type.dart";
import "../enums/esteam_networking_get_config_value_result.dart";
import "../structs/steam_network_ping_location.dart";
import "../structs/steam_networking_config_value.dart";
import "../structs/steam_networking_identity.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../structs/steam_networking_message.dart";
import "../typedefs.dart";

final _steamNetworkingUtilsSteamApi = dl.lookupFunction<
    Pointer<ISteamNetworkingUtils> Function(),
    Pointer<ISteamNetworkingUtils>
        Function()>("SteamAPI_SteamNetworkingUtils_SteamAPI_v004");

final class ISteamNetworkingUtils extends Opaque {
  static Pointer<ISteamNetworkingUtils> get globalInstance =>
      _steamNetworkingUtilsSteamApi();
}

final _allocateMessage = dl.lookupFunction<
    Pointer<SteamNetworkingMessage> Function(
      Pointer<ISteamNetworkingUtils>,
      Int,
    ),
    Pointer<SteamNetworkingMessage> Function(
      Pointer<ISteamNetworkingUtils>,
      int,
    )>("SteamAPI_ISteamNetworkingUtils_AllocateMessage");

final _initRelayNetworkAccess = dl.lookupFunction<
    Void Function(
      Pointer<ISteamNetworkingUtils>,
    ),
    void Function(
      Pointer<ISteamNetworkingUtils>,
    )>("SteamAPI_ISteamNetworkingUtils_InitRelayNetworkAccess");

final _getRelayNetworkStatus = dl.lookupFunction<
    ESteamNetworkingAvailabilityAliasC Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamRelayNetworkStatus>,
    ),
    ESteamNetworkingAvailabilityAliasDart Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamRelayNetworkStatus>,
    )>("SteamAPI_ISteamNetworkingUtils_GetRelayNetworkStatus");

final _getLocalPingLocation = dl.lookupFunction<
    Float Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkPingLocation>,
    ),
    double Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkPingLocation>,
    )>("SteamAPI_ISteamNetworkingUtils_GetLocalPingLocation");

final _estimatePingTimeBetweenTwoLocations = dl.lookupFunction<
    Int Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkPingLocation>,
      Pointer<SteamNetworkPingLocation>,
    ),
    int Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkPingLocation>,
      Pointer<SteamNetworkPingLocation>,
    )>("SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations");

final _estimatePingTimeFromLocalHost = dl.lookupFunction<
    Int Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkPingLocation>,
    ),
    int Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkPingLocation>,
    )>("SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost");

final _convertPingLocationToString = dl.lookupFunction<
    Void Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkPingLocation>,
      Pointer<Utf8>,
      Int,
    ),
    void Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkPingLocation>,
      Pointer<Utf8>,
      int,
    )>("SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString");

final _parsePingLocationString = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<Utf8>,
      Pointer<SteamNetworkPingLocation>,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<Utf8>,
      Pointer<SteamNetworkPingLocation>,
    )>("SteamAPI_ISteamNetworkingUtils_ParsePingLocationString");

final _checkPingDataUpToDate = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      Float,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      double,
    )>("SteamAPI_ISteamNetworkingUtils_CheckPingDataUpToDate");

final _getPingToDataCenter = dl.lookupFunction<
    Int Function(
      Pointer<ISteamNetworkingUtils>,
      UnsignedInt,
      Pointer<UnsignedInt>,
    ),
    int Function(
      Pointer<ISteamNetworkingUtils>,
      SteamNetworkingPopId,
      Pointer<UnsignedInt>,
    )>("SteamAPI_ISteamNetworkingUtils_GetPingToDataCenter");

final _getDirectPingToPop = dl.lookupFunction<
    Int Function(
      Pointer<ISteamNetworkingUtils>,
      UnsignedInt,
    ),
    int Function(
      Pointer<ISteamNetworkingUtils>,
      SteamNetworkingPopId,
    )>("SteamAPI_ISteamNetworkingUtils_GetDirectPingToPOP");

final _getPopCount = dl.lookupFunction<
    Int Function(
      Pointer<ISteamNetworkingUtils>,
    ),
    int Function(
      Pointer<ISteamNetworkingUtils>,
    )>("SteamAPI_ISteamNetworkingUtils_GetPOPCount");

final _getPopList = dl.lookupFunction<
    Int Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<UnsignedInt>,
      Int,
    ),
    int Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<UnsignedInt>,
      int,
    )>("SteamAPI_ISteamNetworkingUtils_GetPOPList");

final _getLocalTimestamp = dl.lookupFunction<
    LongLong Function(
      Pointer<ISteamNetworkingUtils>,
    ),
    SteamNetworkingMicroseconds Function(
      Pointer<ISteamNetworkingUtils>,
    )>("SteamAPI_ISteamNetworkingUtils_GetLocalTimestamp");

final _isFakeIpv4 = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      UnsignedInt,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      int,
    )>("SteamAPI_ISteamNetworkingUtils_IsFakeIPv4");

final _getIpv4FakeIpType = dl.lookupFunction<
    ESteamNetworkingFakeIpTypeAliasC Function(
      Pointer<ISteamNetworkingUtils>,
      UnsignedInt,
    ),
    ESteamNetworkingFakeIpTypeAliasDart Function(
      Pointer<ISteamNetworkingUtils>,
      int,
    )>("SteamAPI_ISteamNetworkingUtils_GetIPv4FakeIPType");

final _getRealIdentityForFakeIp = dl.lookupFunction<
    EResultAliasC Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIpAddr>,
      Pointer<SteamNetworkingIdentity>,
    ),
    EResultAliasDart Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIpAddr>,
      Pointer<SteamNetworkingIdentity>,
    )>("SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP");

final _setGlobalConfigValueInt32 = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasC,
      Int,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasDart,
      int,
    )>("SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueInt32");

final _setGlobalConfigValueFloat = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasC,
      Float,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasDart,
      double,
    )>("SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueFloat");

final _setGlobalConfigValueString = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasC,
      Pointer<Utf8>,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasDart,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueString");

final _setGlobalConfigValuePtr = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasC,
      Pointer<Void>,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasDart,
      Pointer<Void>,
    )>("SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValuePtr");

final _setConnectionConfigValueInt32 = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      UnsignedInt,
      ESteamNetworkingConfigValueAliasC,
      Int,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      HSteamNetConnection,
      ESteamNetworkingConfigValueAliasDart,
      int,
    )>("SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueInt32");

final _setConnectionConfigValueFloat = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      UnsignedInt,
      ESteamNetworkingConfigValueAliasC,
      Float,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      HSteamNetConnection,
      ESteamNetworkingConfigValueAliasDart,
      double,
    )>("SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueFloat");

final _setConnectionConfigValueString = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      UnsignedInt,
      ESteamNetworkingConfigValueAliasC,
      Pointer<Utf8>,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      HSteamNetConnection,
      ESteamNetworkingConfigValueAliasDart,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueString");

final _setConfigValue = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasC,
      ESteamNetworkingConfigScopeAliasC,
      IntPtr,
      ESteamNetworkingConfigDataTypeAliasC,
      Pointer<Void>,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasDart,
      ESteamNetworkingConfigScopeAliasDart,
      int,
      ESteamNetworkingConfigDataTypeAliasDart,
      Pointer<Void>,
    )>("SteamAPI_ISteamNetworkingUtils_SetConfigValue");

final _setConfigValueStruct = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigScopeAliasC,
      IntPtr,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigScopeAliasDart,
      int,
    )>("SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct");

final _getConfigValue = dl.lookupFunction<
    ESteamNetworkingGetConfigValueResultAliasC Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasC,
      ESteamNetworkingConfigScopeAliasC,
      IntPtr,
      Pointer<ESteamNetworkingConfigDataTypeAliasC>,
      Pointer<Void>,
      Pointer<Size>,
    ),
    ESteamNetworkingGetConfigValueResultAliasDart Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasDart,
      ESteamNetworkingConfigScopeAliasDart,
      int,
      Pointer<ESteamNetworkingConfigDataTypeAliasC>,
      Pointer<Void>,
      Pointer<Size>,
    )>("SteamAPI_ISteamNetworkingUtils_GetConfigValue");

final _getConfigValueInfo = dl.lookupFunction<
    Pointer<Utf8> Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasC,
      Pointer<ESteamNetworkingConfigDataTypeAliasC>,
      Pointer<ESteamNetworkingConfigScopeAliasC>,
    ),
    Pointer<Utf8> Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasDart,
      Pointer<ESteamNetworkingConfigDataTypeAliasC>,
      Pointer<ESteamNetworkingConfigScopeAliasC>,
    )>("SteamAPI_ISteamNetworkingUtils_GetConfigValueInfo");

final _iterateGenericEditableConfigValues = dl.lookupFunction<
    ESteamNetworkingConfigValueAliasC Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasC,
      Bool,
    ),
    ESteamNetworkingConfigValueAliasDart Function(
      Pointer<ISteamNetworkingUtils>,
      ESteamNetworkingConfigValueAliasDart,
      bool,
    )>("SteamAPI_ISteamNetworkingUtils_IterateGenericEditableConfigValues");

final _steamNetworkingIpAddrToString = dl.lookupFunction<
    Void Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIpAddr>,
      Pointer<Utf8>,
      UnsignedInt,
      Bool,
    ),
    void Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIpAddr>,
      Pointer<Utf8>,
      int,
      bool,
    )>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString");

final _steamNetworkingIpAddrParseString = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIpAddr>,
      Pointer<Utf8>,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIpAddr>,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ParseString");

final _steamNetworkingIpAddrGetFakeIpType = dl.lookupFunction<
    ESteamNetworkingFakeIpTypeAliasC Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIpAddr>,
    ),
    ESteamNetworkingFakeIpTypeAliasDart Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIpAddr>,
    )>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType");

final _steamNetworkingIdentityToString = dl.lookupFunction<
    Void Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIdentity>,
      Pointer<Utf8>,
      UnsignedInt,
    ),
    void Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIdentity>,
      Pointer<Utf8>,
      int,
    )>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString");

final _steamNetworkingIdentityParseString = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIdentity>,
      Pointer<Utf8>,
    ),
    bool Function(
      Pointer<ISteamNetworkingUtils>,
      Pointer<SteamNetworkingIdentity>,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ParseString");

extension ISteamNetworkingUtilsExtensions on Pointer<ISteamNetworkingUtils> {
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
      ESteamNetworkingAvailability.fromValue(
        _getRelayNetworkStatus.call(
          this,
          pDetails,
        ),
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
    double maxAgeSeconds,
  ) =>
      _checkPingDataUpToDate.call(
        this,
        maxAgeSeconds,
      );

  int getPingToDataCenter(
    SteamNetworkingPopId popId,
    Pointer<UnsignedInt> pViaRelayPoP,
  ) =>
      _getPingToDataCenter.call(
        this,
        popId,
        pViaRelayPoP,
      );

  int getDirectPingToPop(
    SteamNetworkingPopId popId,
  ) =>
      _getDirectPingToPop.call(
        this,
        popId,
      );

  int getPopCount() => _getPopCount.call(
        this,
      );

  int getPopList(
    Pointer<UnsignedInt> list,
    int nListSz,
  ) =>
      _getPopList.call(
        this,
        list,
        nListSz,
      );

  SteamNetworkingMicroseconds getLocalTimestamp() => _getLocalTimestamp.call(
        this,
      );

  bool isFakeIpv4(
    int nIpv4,
  ) =>
      _isFakeIpv4.call(
        this,
        nIpv4,
      );

  ESteamNetworkingFakeIpType getIpv4FakeIpType(
    int nIpv4,
  ) =>
      ESteamNetworkingFakeIpType.fromValue(
        _getIpv4FakeIpType.call(
          this,
          nIpv4,
        ),
      );

  EResult getRealIdentityForFakeIp(
    Pointer<SteamNetworkingIpAddr> fakeIp,
    Pointer<SteamNetworkingIdentity> pOutRealIdentity,
  ) =>
      EResult.fromValue(
        _getRealIdentityForFakeIp.call(
          this,
          fakeIp,
          pOutRealIdentity,
        ),
      );

  bool setGlobalConfigValueInt32(
    ESteamNetworkingConfigValue value,
    int val,
  ) =>
      _setGlobalConfigValueInt32.call(
        this,
        value.value,
        val,
      );

  bool setGlobalConfigValueFloat(
    ESteamNetworkingConfigValue value,
    double val,
  ) =>
      _setGlobalConfigValueFloat.call(
        this,
        value.value,
        val,
      );

  bool setGlobalConfigValueString(
    ESteamNetworkingConfigValue value,
    Pointer<Utf8> val,
  ) =>
      _setGlobalConfigValueString.call(
        this,
        value.value,
        val,
      );

  bool setGlobalConfigValuePtr(
    ESteamNetworkingConfigValue value,
    Pointer<Void> val,
  ) =>
      _setGlobalConfigValuePtr.call(
        this,
        value.value,
        val,
      );

  bool setConnectionConfigValueInt32(
    HSteamNetConnection hConn,
    ESteamNetworkingConfigValue value,
    int val,
  ) =>
      _setConnectionConfigValueInt32.call(
        this,
        hConn,
        value.value,
        val,
      );

  bool setConnectionConfigValueFloat(
    HSteamNetConnection hConn,
    ESteamNetworkingConfigValue value,
    double val,
  ) =>
      _setConnectionConfigValueFloat.call(
        this,
        hConn,
        value.value,
        val,
      );

  bool setConnectionConfigValueString(
    HSteamNetConnection hConn,
    ESteamNetworkingConfigValue value,
    Pointer<Utf8> val,
  ) =>
      _setConnectionConfigValueString.call(
        this,
        hConn,
        value.value,
        val,
      );

  bool setConfigValue(
    ESteamNetworkingConfigValue value,
    ESteamNetworkingConfigScope scopeType,
    int scopeObj,
    ESteamNetworkingConfigDataType dataType,
    Pointer<Void> pArg,
  ) =>
      _setConfigValue.call(
        this,
        value.value,
        scopeType.value,
        scopeObj,
        dataType.value,
        pArg,
      );

  bool setConfigValueStruct(
    Pointer<SteamNetworkingConfigValue> opt,
    ESteamNetworkingConfigScope scopeType,
    int scopeObj,
  ) =>
      _setConfigValueStruct.call(
        this,
        opt,
        scopeType.value,
        scopeObj,
      );

  ESteamNetworkingGetConfigValueResult getConfigValue(
    ESteamNetworkingConfigValue value,
    ESteamNetworkingConfigScope scopeType,
    int scopeObj,
    Pointer<ESteamNetworkingConfigDataTypeAliasC> pOutDataType,
    Pointer<Void> pResult,
    Pointer<Size> cbResult,
  ) =>
      ESteamNetworkingGetConfigValueResult.fromValue(
        _getConfigValue.call(
          this,
          value.value,
          scopeType.value,
          scopeObj,
          pOutDataType,
          pResult,
          cbResult,
        ),
      );

  Pointer<Utf8> getConfigValueInfo(
    ESteamNetworkingConfigValue value,
    Pointer<ESteamNetworkingConfigDataTypeAliasC> pOutDataType,
    Pointer<ESteamNetworkingConfigScopeAliasC> pOutScope,
  ) =>
      _getConfigValueInfo.call(
        this,
        value.value,
        pOutDataType,
        pOutScope,
      );

  ESteamNetworkingConfigValue iterateGenericEditableConfigValues(
    ESteamNetworkingConfigValue current,
    bool enumerateDevVars,
  ) =>
      ESteamNetworkingConfigValue.fromValue(
        _iterateGenericEditableConfigValues.call(
          this,
          current.value,
          enumerateDevVars,
        ),
      );

  void steamNetworkingIpAddrToString(
    Pointer<SteamNetworkingIpAddr> addr,
    Pointer<Utf8> buf,
    int cbBuf,
    bool withPort,
  ) =>
      _steamNetworkingIpAddrToString.call(
        this,
        addr,
        buf,
        cbBuf,
        withPort,
      );

  bool steamNetworkingIpAddrParseString(
    Pointer<SteamNetworkingIpAddr> pAddr,
    Pointer<Utf8> pszStr,
  ) =>
      _steamNetworkingIpAddrParseString.call(
        this,
        pAddr,
        pszStr,
      );

  ESteamNetworkingFakeIpType steamNetworkingIpAddrGetFakeIpType(
    Pointer<SteamNetworkingIpAddr> addr,
  ) =>
      ESteamNetworkingFakeIpType.fromValue(
        _steamNetworkingIpAddrGetFakeIpType.call(
          this,
          addr,
        ),
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
