// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/ebegin_auth_session_result.dart";
import "../enums/euser_has_license_for_app_result.dart";
import "../structs/steam_ip_address.dart";
import "../typedefs.dart";

final _steamGameServer = dl.lookupFunction<Pointer<ISteamGameServer> Function(),
    Pointer<ISteamGameServer> Function()>("SteamAPI_SteamGameServer_v014");

class ISteamGameServer extends Opaque {
  static Pointer<ISteamGameServer> get serverInstance => _steamGameServer();
}

final _setProduct = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetProduct");

final _setGameDescription = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetGameDescription");

final _setModDir = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetModDir");

final _setDedicatedServer = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Bool,
),
    void Function(
  Pointer<ISteamGameServer>,
  bool,
)>("SteamAPI_ISteamGameServer_SetDedicatedServer");

final _logOn = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_LogOn");

final _logOnAnonymous = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
),
    void Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_LogOnAnonymous");

final _logOff = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
),
    void Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_LogOff");

final _bLoggedOn = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServer>,
),
    bool Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_BLoggedOn");

final _bSecure = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServer>,
),
    bool Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_BSecure");

final _getSteamId = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamGameServer>,
),
    CSteamId Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_GetSteamID");

final _wasRestartRequested = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServer>,
),
    bool Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_WasRestartRequested");

final _setMaxPlayerCount = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Int,
),
    void Function(
  Pointer<ISteamGameServer>,
  int,
)>("SteamAPI_ISteamGameServer_SetMaxPlayerCount");

final _setBotPlayerCount = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Int,
),
    void Function(
  Pointer<ISteamGameServer>,
  int,
)>("SteamAPI_ISteamGameServer_SetBotPlayerCount");

final _setServerName = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetServerName");

final _setMapName = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetMapName");

final _setPasswordProtected = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Bool,
),
    void Function(
  Pointer<ISteamGameServer>,
  bool,
)>("SteamAPI_ISteamGameServer_SetPasswordProtected");

final _setSpectatorPort = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  UnsignedShort,
),
    void Function(
  Pointer<ISteamGameServer>,
  int,
)>("SteamAPI_ISteamGameServer_SetSpectatorPort");

final _setSpectatorServerName = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetSpectatorServerName");

final _clearAllKeyValues = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
),
    void Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_ClearAllKeyValues");

final _setKeyValue = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetKeyValue");

final _setGameTags = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetGameTags");

final _setGameData = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetGameData");

final _setRegion = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamGameServer>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServer_SetRegion");

final _setAdvertiseServerActive = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  Bool,
),
    void Function(
  Pointer<ISteamGameServer>,
  bool,
)>("SteamAPI_ISteamGameServer_SetAdvertiseServerActive");

final _getAuthSessionTicket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamGameServer>,
  Pointer<Void>,
  Int,
  Pointer<UnsignedInt>,
),
    HAuthTicket Function(
  Pointer<ISteamGameServer>,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamGameServer_GetAuthSessionTicket");

final _beginAuthSession = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamGameServer>,
  Pointer<Void>,
  Int,
  UnsignedLongLong,
),
    EBeginAuthSessionResult Function(
  Pointer<ISteamGameServer>,
  Pointer<Void>,
  int,
  CSteamId,
)>("SteamAPI_ISteamGameServer_BeginAuthSession");

final _endAuthSession = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamGameServer>,
  CSteamId,
)>("SteamAPI_ISteamGameServer_EndAuthSession");

final _cancelAuthTicket = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamGameServer>,
  HAuthTicket,
)>("SteamAPI_ISteamGameServer_CancelAuthTicket");

final _userHasLicenseForApp = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamGameServer>,
  UnsignedLongLong,
  UnsignedInt,
),
    EUserHasLicenseForAppResult Function(
  Pointer<ISteamGameServer>,
  CSteamId,
  AppId,
)>("SteamAPI_ISteamGameServer_UserHasLicenseForApp");

final _requestUserGroupStatus = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServer>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamGameServer>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamGameServer_RequestUserGroupStatus");

final _getGameplayStats = dl.lookupFunction<
    Void Function(
  Pointer<ISteamGameServer>,
),
    void Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_GetGameplayStats");

final _getServerReputation = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamGameServer>,
),
    SteamApiCall Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_GetServerReputation");

final _getPublicIp = dl.lookupFunction<
    SteamIpAddress Function(
  Pointer<ISteamGameServer>,
),
    SteamIpAddress Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_GetPublicIP");

final _handleIncomingPacket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServer>,
  Pointer<Void>,
  Int,
  UnsignedInt,
  UnsignedShort,
),
    bool Function(
  Pointer<ISteamGameServer>,
  Pointer<Void>,
  int,
  int,
  int,
)>("SteamAPI_ISteamGameServer_HandleIncomingPacket");

final _getNextOutgoingPacket = dl.lookupFunction<
    Int Function(
  Pointer<ISteamGameServer>,
  Pointer<Void>,
  Int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedShort>,
),
    int Function(
  Pointer<ISteamGameServer>,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedShort>,
)>("SteamAPI_ISteamGameServer_GetNextOutgoingPacket");

final _associateWithClan = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamGameServer>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamGameServer>,
  CSteamId,
)>("SteamAPI_ISteamGameServer_AssociateWithClan");

final _computeNewPlayerCompatibility = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamGameServer>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamGameServer>,
  CSteamId,
)>("SteamAPI_ISteamGameServer_ComputeNewPlayerCompatibility");

final _createUnauthenticatedUserConnection = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamGameServer>,
),
    CSteamId Function(
  Pointer<ISteamGameServer>,
)>("SteamAPI_ISteamGameServer_CreateUnauthenticatedUserConnection");

final _bUpdateUserData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServer>,
  UnsignedLongLong,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamGameServer>,
  CSteamId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamGameServer_BUpdateUserData");

extension ISteamGameServerExtensions on Pointer<ISteamGameServer> {
  void setProduct(
    Pointer<Utf8> pszProduct,
  ) =>
      _setProduct.call(
        this,
        pszProduct,
      );

  void setGameDescription(
    Pointer<Utf8> pszGameDescription,
  ) =>
      _setGameDescription.call(
        this,
        pszGameDescription,
      );

  void setModDir(
    Pointer<Utf8> pszModDir,
  ) =>
      _setModDir.call(
        this,
        pszModDir,
      );

  void setDedicatedServer(
    bool dedicated,
  ) =>
      _setDedicatedServer.call(
        this,
        dedicated,
      );

  void logOn(
    Pointer<Utf8> pszToken,
  ) =>
      _logOn.call(
        this,
        pszToken,
      );

  void logOnAnonymous() => _logOnAnonymous.call(
        this,
      );

  void logOff() => _logOff.call(
        this,
      );

  bool bLoggedOn() => _bLoggedOn.call(
        this,
      );

  bool bSecure() => _bSecure.call(
        this,
      );

  CSteamId getSteamId() => _getSteamId.call(
        this,
      );

  bool wasRestartRequested() => _wasRestartRequested.call(
        this,
      );

  void setMaxPlayerCount(
    int cPlayersMax,
  ) =>
      _setMaxPlayerCount.call(
        this,
        cPlayersMax,
      );

  void setBotPlayerCount(
    int cBotplayers,
  ) =>
      _setBotPlayerCount.call(
        this,
        cBotplayers,
      );

  void setServerName(
    Pointer<Utf8> pszServerName,
  ) =>
      _setServerName.call(
        this,
        pszServerName,
      );

  void setMapName(
    Pointer<Utf8> pszMapName,
  ) =>
      _setMapName.call(
        this,
        pszMapName,
      );

  void setPasswordProtected(
    bool passwordProtected,
  ) =>
      _setPasswordProtected.call(
        this,
        passwordProtected,
      );

  void setSpectatorPort(
    int spectatorPort,
  ) =>
      _setSpectatorPort.call(
        this,
        spectatorPort,
      );

  void setSpectatorServerName(
    Pointer<Utf8> pszSpectatorServerName,
  ) =>
      _setSpectatorServerName.call(
        this,
        pszSpectatorServerName,
      );

  void clearAllKeyValues() => _clearAllKeyValues.call(
        this,
      );

  void setKeyValue(
    Pointer<Utf8> pKey,
    Pointer<Utf8> pValue,
  ) =>
      _setKeyValue.call(
        this,
        pKey,
        pValue,
      );

  void setGameTags(
    Pointer<Utf8> gameTags,
  ) =>
      _setGameTags.call(
        this,
        gameTags,
      );

  void setGameData(
    Pointer<Utf8> gameData,
  ) =>
      _setGameData.call(
        this,
        gameData,
      );

  void setRegion(
    Pointer<Utf8> pszRegion,
  ) =>
      _setRegion.call(
        this,
        pszRegion,
      );

  void setAdvertiseServerActive(
    bool active,
  ) =>
      _setAdvertiseServerActive.call(
        this,
        active,
      );

  HAuthTicket getAuthSessionTicket(
    Pointer<Void> pTicket,
    int cbMaxTicket,
    Pointer<UnsignedInt> pcbTicket,
  ) =>
      _getAuthSessionTicket.call(
        this,
        pTicket,
        cbMaxTicket,
        pcbTicket,
      );

  EBeginAuthSessionResult beginAuthSession(
    Pointer<Void> pAuthTicket,
    int cbAuthTicket,
    CSteamId steamId,
  ) =>
      _beginAuthSession.call(
        this,
        pAuthTicket,
        cbAuthTicket,
        steamId,
      );

  void endAuthSession(
    CSteamId steamId,
  ) =>
      _endAuthSession.call(
        this,
        steamId,
      );

  void cancelAuthTicket(
    HAuthTicket hAuthTicket,
  ) =>
      _cancelAuthTicket.call(
        this,
        hAuthTicket,
      );

  EUserHasLicenseForAppResult userHasLicenseForApp(
    CSteamId steamId,
    AppId appId,
  ) =>
      _userHasLicenseForApp.call(
        this,
        steamId,
        appId,
      );

  bool requestUserGroupStatus(
    CSteamId steamIdUser,
    CSteamId steamIdGroup,
  ) =>
      _requestUserGroupStatus.call(
        this,
        steamIdUser,
        steamIdGroup,
      );

  void getGameplayStats() => _getGameplayStats.call(
        this,
      );

  SteamApiCall getServerReputation() => _getServerReputation.call(
        this,
      );

  SteamIpAddress getPublicIp() => _getPublicIp.call(
        this,
      );

  bool handleIncomingPacket(
    Pointer<Void> pData,
    int cbData,
    int srcIp,
    int srcPort,
  ) =>
      _handleIncomingPacket.call(
        this,
        pData,
        cbData,
        srcIp,
        srcPort,
      );

  int getNextOutgoingPacket(
    Pointer<Void> pOut,
    int cbMaxOut,
    Pointer<UnsignedInt> pNetAdr,
    Pointer<UnsignedShort> pPort,
  ) =>
      _getNextOutgoingPacket.call(
        this,
        pOut,
        cbMaxOut,
        pNetAdr,
        pPort,
      );

  SteamApiCall associateWithClan(
    CSteamId steamIdClan,
  ) =>
      _associateWithClan.call(
        this,
        steamIdClan,
      );

  SteamApiCall computeNewPlayerCompatibility(
    CSteamId steamIdNewPlayer,
  ) =>
      _computeNewPlayerCompatibility.call(
        this,
        steamIdNewPlayer,
      );

  CSteamId createUnauthenticatedUserConnection() =>
      _createUnauthenticatedUserConnection.call(
        this,
      );

  bool bUpdateUserData(
    CSteamId steamIdUser,
    Pointer<Utf8> playerName,
    int uScore,
  ) =>
      _bUpdateUserData.call(
        this,
        steamIdUser,
        playerName,
        uScore,
      );
}
