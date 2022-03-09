import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_begin_auth_session_result.dart";
import "../enums/e_duration_control_online_state.dart";
import "../enums/e_user_has_license_for_app_result.dart";
import "../enums/e_voice_result.dart";
import "../steam_api.dart";
import "../typedefs.dart";

class SteamUser extends Opaque {
  static Pointer<SteamUser> steamUser() => nullptr;
}

final _getHSteamUser = dl.lookupFunction<
    Int Function(
  Pointer<SteamUser>,
),
    HSteamUser Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_GetHSteamUser");

final _bLoggedOn = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUser>,
),
    bool Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_BLoggedOn");

final _getSteamID = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUser>,
),
    CSteamId Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_GetSteamID");

final _trackAppUsageEvent = dl.lookupFunction<
    Void Function(
  Pointer<SteamUser>,
  UnsignedLongLong,
  Int,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamUser>,
  CGameId,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUser_TrackAppUsageEvent");

final _getUserDataFolder = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUser>,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<SteamUser>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUser_GetUserDataFolder");

final _startVoiceRecording = dl.lookupFunction<
    Void Function(
  Pointer<SteamUser>,
),
    void Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_StartVoiceRecording");

final _stopVoiceRecording = dl.lookupFunction<
    Void Function(
  Pointer<SteamUser>,
),
    void Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_StopVoiceRecording");

final _getAvailableVoice = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUser>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    EVoiceResult Function(
  Pointer<SteamUser>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamUser_GetAvailableVoice");

final _getVoice = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUser>,
  Bool,
  Pointer<Void>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  Bool,
  Pointer<Void>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    EVoiceResult Function(
  Pointer<SteamUser>,
  bool,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
  bool,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamUser_GetVoice");

final _decompressVoice = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  UnsignedInt,
  Pointer<Void>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    EVoiceResult Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  int,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamUser_DecompressVoice");

final _getVoiceOptimalSampleRate = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUser>,
),
    int Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_GetVoiceOptimalSampleRate");

final _getAuthSessionTicket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  Int,
  Pointer<UnsignedInt>,
),
    HAuthTicket Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUser_GetAuthSessionTicket");

final _beginAuthSession = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  Int,
  UnsignedLongLong,
),
    EBeginAuthSessionResult Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  int,
  CSteamId,
)>("SteamAPI_ISteamUser_BeginAuthSession");

final _endAuthSession = dl.lookupFunction<
    Void Function(
  Pointer<SteamUser>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamUser>,
  CSteamId,
)>("SteamAPI_ISteamUser_EndAuthSession");

final _cancelAuthTicket = dl.lookupFunction<
    Void Function(
  Pointer<SteamUser>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamUser>,
  HAuthTicket,
)>("SteamAPI_ISteamUser_CancelAuthTicket");

final _userHasLicenseForApp = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUser>,
  UnsignedLongLong,
  UnsignedInt,
),
    EUserHasLicenseForAppResult Function(
  Pointer<SteamUser>,
  CSteamId,
  AppId,
)>("SteamAPI_ISteamUser_UserHasLicenseForApp");

final _bIsBehindNAT = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUser>,
),
    bool Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_BIsBehindNAT");

final _advertiseGame = dl.lookupFunction<
    Void Function(
  Pointer<SteamUser>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedShort,
),
    void Function(
  Pointer<SteamUser>,
  CSteamId,
  int,
  int,
)>("SteamAPI_ISteamUser_AdvertiseGame");

final _requestEncryptedAppTicket = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  Int,
),
    SteamApiCall Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamUser_RequestEncryptedAppTicket");

final _getEncryptedAppTicket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  Int,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamUser>,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUser_GetEncryptedAppTicket");

final _getGameBadgeLevel = dl.lookupFunction<
    Int Function(
  Pointer<SteamUser>,
  Int,
  Bool,
),
    int Function(
  Pointer<SteamUser>,
  int,
  bool,
)>("SteamAPI_ISteamUser_GetGameBadgeLevel");

final _getPlayerSteamLevel = dl.lookupFunction<
    Int Function(
  Pointer<SteamUser>,
),
    int Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_GetPlayerSteamLevel");

final _requestStoreAuthURL = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUser>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<SteamUser>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUser_RequestStoreAuthURL");

final _bIsPhoneVerified = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUser>,
),
    bool Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_BIsPhoneVerified");

final _bIsTwoFactorEnabled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUser>,
),
    bool Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_BIsTwoFactorEnabled");

final _bIsPhoneIdentifying = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUser>,
),
    bool Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_BIsPhoneIdentifying");

final _bIsPhoneRequiringVerification = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUser>,
),
    bool Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_BIsPhoneRequiringVerification");

final _getMarketEligibility = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUser>,
),
    SteamApiCall Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_GetMarketEligibility");

final _getDurationControl = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUser>,
),
    SteamApiCall Function(
  Pointer<SteamUser>,
)>("SteamAPI_ISteamUser_GetDurationControl");

final _bSetDurationControlOnlineState = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUser>,
  Int32,
),
    bool Function(
  Pointer<SteamUser>,
  EDurationControlOnlineState,
)>("SteamAPI_ISteamUser_BSetDurationControlOnlineState");

extension SteamUserExtensions on Pointer<SteamUser> {
  HSteamUser getHSteamUser() => _getHSteamUser.call(
        this,
      );

  bool bLoggedOn() => _bLoggedOn.call(
        this,
      );

  CSteamId getSteamID() => _getSteamID.call(
        this,
      );

  void trackAppUsageEvent(
    CGameId gameID,
    int eAppUsageEvent,
    Pointer<Utf8> pchExtraInfo,
  ) =>
      _trackAppUsageEvent.call(
        this,
        gameID,
        eAppUsageEvent,
        pchExtraInfo,
      );

  bool getUserDataFolder(
    Pointer<Utf8> pchBuffer,
    int cubBuffer,
  ) =>
      _getUserDataFolder.call(
        this,
        pchBuffer,
        cubBuffer,
      );

  void startVoiceRecording() => _startVoiceRecording.call(
        this,
      );

  void stopVoiceRecording() => _stopVoiceRecording.call(
        this,
      );

  EVoiceResult getAvailableVoice(
    Pointer<UnsignedInt> pcbCompressed,
    Pointer<UnsignedInt> pcbUncompressedDeprecated,
    int nUncompressedVoiceDesiredSampleRateDeprecated,
  ) =>
      _getAvailableVoice.call(
        this,
        pcbCompressed,
        pcbUncompressedDeprecated,
        nUncompressedVoiceDesiredSampleRateDeprecated,
      );

  EVoiceResult getVoice(
    bool bWantCompressed,
    Pointer<Void> pDestBuffer,
    int cbDestBufferSize,
    Pointer<UnsignedInt> nBytesWritten,
    bool bWantUncompressedDeprecated,
    Pointer<Void> pUncompressedDestBufferDeprecated,
    int cbUncompressedDestBufferSizeDeprecated,
    Pointer<UnsignedInt> nUncompressBytesWrittenDeprecated,
    int nUncompressedVoiceDesiredSampleRateDeprecated,
  ) =>
      _getVoice.call(
        this,
        bWantCompressed,
        pDestBuffer,
        cbDestBufferSize,
        nBytesWritten,
        bWantUncompressedDeprecated,
        pUncompressedDestBufferDeprecated,
        cbUncompressedDestBufferSizeDeprecated,
        nUncompressBytesWrittenDeprecated,
        nUncompressedVoiceDesiredSampleRateDeprecated,
      );

  EVoiceResult decompressVoice(
    Pointer<Void> pCompressed,
    int cbCompressed,
    Pointer<Void> pDestBuffer,
    int cbDestBufferSize,
    Pointer<UnsignedInt> nBytesWritten,
    int nDesiredSampleRate,
  ) =>
      _decompressVoice.call(
        this,
        pCompressed,
        cbCompressed,
        pDestBuffer,
        cbDestBufferSize,
        nBytesWritten,
        nDesiredSampleRate,
      );

  int getVoiceOptimalSampleRate() => _getVoiceOptimalSampleRate.call(
        this,
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
    CSteamId steamID,
  ) =>
      _beginAuthSession.call(
        this,
        pAuthTicket,
        cbAuthTicket,
        steamID,
      );

  void endAuthSession(
    CSteamId steamID,
  ) =>
      _endAuthSession.call(
        this,
        steamID,
      );

  void cancelAuthTicket(
    HAuthTicket hAuthTicket,
  ) =>
      _cancelAuthTicket.call(
        this,
        hAuthTicket,
      );

  EUserHasLicenseForAppResult userHasLicenseForApp(
    CSteamId steamID,
    AppId appID,
  ) =>
      _userHasLicenseForApp.call(
        this,
        steamID,
        appID,
      );

  bool bIsBehindNAT() => _bIsBehindNAT.call(
        this,
      );

  void advertiseGame(
    CSteamId steamIDGameServer,
    int unIPServer,
    int usPortServer,
  ) =>
      _advertiseGame.call(
        this,
        steamIDGameServer,
        unIPServer,
        usPortServer,
      );

  SteamApiCall requestEncryptedAppTicket(
    Pointer<Void> pDataToInclude,
    int cbDataToInclude,
  ) =>
      _requestEncryptedAppTicket.call(
        this,
        pDataToInclude,
        cbDataToInclude,
      );

  bool getEncryptedAppTicket(
    Pointer<Void> pTicket,
    int cbMaxTicket,
    Pointer<UnsignedInt> pcbTicket,
  ) =>
      _getEncryptedAppTicket.call(
        this,
        pTicket,
        cbMaxTicket,
        pcbTicket,
      );

  int getGameBadgeLevel(
    int nSeries,
    bool bFoil,
  ) =>
      _getGameBadgeLevel.call(
        this,
        nSeries,
        bFoil,
      );

  int getPlayerSteamLevel() => _getPlayerSteamLevel.call(
        this,
      );

  SteamApiCall requestStoreAuthURL(
    Pointer<Utf8> pchRedirectURL,
  ) =>
      _requestStoreAuthURL.call(
        this,
        pchRedirectURL,
      );

  bool bIsPhoneVerified() => _bIsPhoneVerified.call(
        this,
      );

  bool bIsTwoFactorEnabled() => _bIsTwoFactorEnabled.call(
        this,
      );

  bool bIsPhoneIdentifying() => _bIsPhoneIdentifying.call(
        this,
      );

  bool bIsPhoneRequiringVerification() => _bIsPhoneRequiringVerification.call(
        this,
      );

  SteamApiCall getMarketEligibility() => _getMarketEligibility.call(
        this,
      );

  SteamApiCall getDurationControl() => _getDurationControl.call(
        this,
      );

  bool bSetDurationControlOnlineState(
    EDurationControlOnlineState eNewState,
  ) =>
      _bSetDurationControlOnlineState.call(
        this,
        eNewState,
      );
}
