import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../typedefs.dart";

class SteamApps extends Opaque {
  static Pointer<SteamApps> steamApps() => nullptr;
}

final _bIsSubscribed = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
),
    bool Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_BIsSubscribed");

final _bIsLowViolence = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
),
    bool Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_BIsLowViolence");

final _bIsCybercafe = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
),
    bool Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_BIsCybercafe");

final _bIsVACBanned = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
),
    bool Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_BIsVACBanned");

final _getCurrentGameLanguage = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamApps>,
),
    Pointer<Utf8> Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_GetCurrentGameLanguage");

final _getAvailableGameLanguages = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamApps>,
),
    Pointer<Utf8> Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_GetAvailableGameLanguages");

final _bIsSubscribedApp = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_BIsSubscribedApp");

final _bIsDlcInstalled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_BIsDlcInstalled");

final _getEarliestPurchaseUnixTime = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamApps>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_GetEarliestPurchaseUnixTime");

final _bIsSubscribedFromFreeWeekend = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
),
    bool Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_BIsSubscribedFromFreeWeekend");

final _getDLCCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamApps>,
),
    int Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_GetDLCCount");

final _bGetDLCDataByIndex = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
  Int,
  Pointer<UnsignedInt>,
  Pointer<Bool>,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<SteamApps>,
  int,
  Pointer<UnsignedInt>,
  Pointer<Bool>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamApps_BGetDLCDataByIndex");

final _installDLC = dl.lookupFunction<
    Void Function(
  Pointer<SteamApps>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_InstallDLC");

final _uninstallDLC = dl.lookupFunction<
    Void Function(
  Pointer<SteamApps>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_UninstallDLC");

final _requestAppProofOfPurchaseKey = dl.lookupFunction<
    Void Function(
  Pointer<SteamApps>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_RequestAppProofOfPurchaseKey");

final _getCurrentBetaName = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<SteamApps>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamApps_GetCurrentBetaName");

final _markContentCorrupt = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
  Bool,
),
    bool Function(
  Pointer<SteamApps>,
  bool,
)>("SteamAPI_ISteamApps_MarkContentCorrupt");

final _getInstalledDepots = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamApps>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamApps>,
  AppId,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamApps_GetInstalledDepots");

final _getAppInstallDir = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamApps>,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamApps>,
  AppId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamApps_GetAppInstallDir");

final _bIsAppInstalled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_BIsAppInstalled");

final _getAppOwner = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamApps>,
),
    CSteamId Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_GetAppOwner");

final _getLaunchQueryParam = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamApps>,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<SteamApps>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamApps_GetLaunchQueryParam");

final _getDlcDownloadProgress = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<SteamApps>,
  AppId,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamApps_GetDlcDownloadProgress");

final _getAppBuildId = dl.lookupFunction<
    Int Function(
  Pointer<SteamApps>,
),
    int Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_GetAppBuildId");

final _requestAllProofOfPurchaseKeys = dl.lookupFunction<
    Void Function(
  Pointer<SteamApps>,
),
    void Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_RequestAllProofOfPurchaseKeys");

final _getFileDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamApps>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<SteamApps>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamApps_GetFileDetails");

final _getLaunchCommandLine = dl.lookupFunction<
    Int Function(
  Pointer<SteamApps>,
  Pointer<Utf8>,
  Int,
),
    int Function(
  Pointer<SteamApps>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamApps_GetLaunchCommandLine");

final _bIsSubscribedFromFamilySharing = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
),
    bool Function(
  Pointer<SteamApps>,
)>("SteamAPI_ISteamApps_BIsSubscribedFromFamilySharing");

final _bIsTimedTrial = dl.lookupFunction<
    Bool Function(
  Pointer<SteamApps>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamApps>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamApps_BIsTimedTrial");

extension SteamAppsExtensions on Pointer<SteamApps> {
  bool bIsSubscribed() => _bIsSubscribed.call(
        this,
      );

  bool bIsLowViolence() => _bIsLowViolence.call(
        this,
      );

  bool bIsCybercafe() => _bIsCybercafe.call(
        this,
      );

  bool bIsVACBanned() => _bIsVACBanned.call(
        this,
      );

  Pointer<Utf8> getCurrentGameLanguage() => _getCurrentGameLanguage.call(
        this,
      );

  Pointer<Utf8> getAvailableGameLanguages() => _getAvailableGameLanguages.call(
        this,
      );

  bool bIsSubscribedApp(
    AppId appID,
  ) =>
      _bIsSubscribedApp.call(
        this,
        appID,
      );

  bool bIsDlcInstalled(
    AppId appID,
  ) =>
      _bIsDlcInstalled.call(
        this,
        appID,
      );

  int getEarliestPurchaseUnixTime(
    AppId nAppID,
  ) =>
      _getEarliestPurchaseUnixTime.call(
        this,
        nAppID,
      );

  bool bIsSubscribedFromFreeWeekend() => _bIsSubscribedFromFreeWeekend.call(
        this,
      );

  int getDLCCount() => _getDLCCount.call(
        this,
      );

  bool bGetDLCDataByIndex(
    int iDLC,
    Pointer<UnsignedInt> pAppID,
    Pointer<Bool> pbAvailable,
    Pointer<Utf8> pchName,
    int cchNameBufferSize,
  ) =>
      _bGetDLCDataByIndex.call(
        this,
        iDLC,
        pAppID,
        pbAvailable,
        pchName,
        cchNameBufferSize,
      );

  void installDLC(
    AppId nAppID,
  ) =>
      _installDLC.call(
        this,
        nAppID,
      );

  void uninstallDLC(
    AppId nAppID,
  ) =>
      _uninstallDLC.call(
        this,
        nAppID,
      );

  void requestAppProofOfPurchaseKey(
    AppId nAppID,
  ) =>
      _requestAppProofOfPurchaseKey.call(
        this,
        nAppID,
      );

  bool getCurrentBetaName(
    Pointer<Utf8> pchName,
    int cchNameBufferSize,
  ) =>
      _getCurrentBetaName.call(
        this,
        pchName,
        cchNameBufferSize,
      );

  bool markContentCorrupt(
    bool bMissingFilesOnly,
  ) =>
      _markContentCorrupt.call(
        this,
        bMissingFilesOnly,
      );

  int getInstalledDepots(
    AppId appID,
    Pointer<UnsignedInt> pvecDepots,
    int cMaxDepots,
  ) =>
      _getInstalledDepots.call(
        this,
        appID,
        pvecDepots,
        cMaxDepots,
      );

  int getAppInstallDir(
    AppId appID,
    Pointer<Utf8> pchFolder,
    int cchFolderBufferSize,
  ) =>
      _getAppInstallDir.call(
        this,
        appID,
        pchFolder,
        cchFolderBufferSize,
      );

  bool bIsAppInstalled(
    AppId appID,
  ) =>
      _bIsAppInstalled.call(
        this,
        appID,
      );

  CSteamId getAppOwner() => _getAppOwner.call(
        this,
      );

  Pointer<Utf8> getLaunchQueryParam(
    Pointer<Utf8> pchKey,
  ) =>
      _getLaunchQueryParam.call(
        this,
        pchKey,
      );

  bool getDlcDownloadProgress(
    AppId nAppID,
    Pointer<UnsignedLongLong> punBytesDownloaded,
    Pointer<UnsignedLongLong> punBytesTotal,
  ) =>
      _getDlcDownloadProgress.call(
        this,
        nAppID,
        punBytesDownloaded,
        punBytesTotal,
      );

  int getAppBuildId() => _getAppBuildId.call(
        this,
      );

  void requestAllProofOfPurchaseKeys() => _requestAllProofOfPurchaseKeys.call(
        this,
      );

  SteamApiCall getFileDetails(
    Pointer<Utf8> pszFileName,
  ) =>
      _getFileDetails.call(
        this,
        pszFileName,
      );

  int getLaunchCommandLine(
    Pointer<Utf8> pszCommandLine,
    int cubCommandLine,
  ) =>
      _getLaunchCommandLine.call(
        this,
        pszCommandLine,
        cubCommandLine,
      );

  bool bIsSubscribedFromFamilySharing() => _bIsSubscribedFromFamilySharing.call(
        this,
      );

  bool bIsTimedTrial(
    Pointer<UnsignedInt> punSecondsAllowed,
    Pointer<UnsignedInt> punSecondsPlayed,
  ) =>
      _bIsTimedTrial.call(
        this,
        punSecondsAllowed,
        punSecondsPlayed,
      );
}
