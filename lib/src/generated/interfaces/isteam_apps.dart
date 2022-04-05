// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";
import "../typedefs.dart";

final _steamApps = dl.lookupFunction<Pointer<ISteamApps> Function(),
    Pointer<ISteamApps> Function()>("SteamAPI_SteamApps_v008");

class ISteamApps extends Opaque {
  static Pointer<ISteamApps> get userInstance => _steamApps();
}

final _isSubscribed = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
),
    bool Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_BIsSubscribed");

final _isLowViolence = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
),
    bool Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_BIsLowViolence");

final _isCybercafe = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
),
    bool Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_BIsCybercafe");

final _isVACBanned = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
),
    bool Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_BIsVACBanned");

final _getCurrentGameLanguage = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamApps>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_GetCurrentGameLanguage");

final _getAvailableGameLanguages = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamApps>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_GetAvailableGameLanguages");

final _isSubscribedApp = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_BIsSubscribedApp");

final _isDlcInstalled = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_BIsDlcInstalled");

final _getEarliestPurchaseUnixTime = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamApps>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_GetEarliestPurchaseUnixTime");

final _isSubscribedFromFreeWeekend = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
),
    bool Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_BIsSubscribedFromFreeWeekend");

final _getDLCCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamApps>,
),
    int Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_GetDLCCount");

final _bGetDLCDataByIndex = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
  Int,
  Pointer<UnsignedInt>,
  Pointer<Bool>,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<ISteamApps>,
  int,
  Pointer<UnsignedInt>,
  Pointer<Bool>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamApps_BGetDLCDataByIndex");

final _installDLC = dl.lookupFunction<
    Void Function(
  Pointer<ISteamApps>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_InstallDLC");

final _uninstallDLC = dl.lookupFunction<
    Void Function(
  Pointer<ISteamApps>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_UninstallDLC");

final _requestAppProofOfPurchaseKey = dl.lookupFunction<
    Void Function(
  Pointer<ISteamApps>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_RequestAppProofOfPurchaseKey");

final _getCurrentBetaName = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<ISteamApps>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamApps_GetCurrentBetaName");

final _markContentCorrupt = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
  Bool,
),
    bool Function(
  Pointer<ISteamApps>,
  bool,
)>("SteamAPI_ISteamApps_MarkContentCorrupt");

final _getInstalledDepots = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamApps>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamApps>,
  AppId,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamApps_GetInstalledDepots");

final _getAppInstallDir = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamApps>,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamApps>,
  AppId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamApps_GetAppInstallDir");

final _isAppInstalled = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamApps>,
  AppId,
)>("SteamAPI_ISteamApps_BIsAppInstalled");

final _getAppOwner = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamApps>,
),
    CSteamId Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_GetAppOwner");

final _getLaunchQueryParam = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamApps>,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamApps>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamApps_GetLaunchQueryParam");

final _getDlcDownloadProgress = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<ISteamApps>,
  AppId,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamApps_GetDlcDownloadProgress");

final _getAppBuildId = dl.lookupFunction<
    Int Function(
  Pointer<ISteamApps>,
),
    int Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_GetAppBuildId");

final _requestAllProofOfPurchaseKeys = dl.lookupFunction<
    Void Function(
  Pointer<ISteamApps>,
),
    void Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_RequestAllProofOfPurchaseKeys");

final _getFileDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamApps>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<ISteamApps>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamApps_GetFileDetails");

final _getLaunchCommandLine = dl.lookupFunction<
    Int Function(
  Pointer<ISteamApps>,
  Pointer<Utf8>,
  Int,
),
    int Function(
  Pointer<ISteamApps>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamApps_GetLaunchCommandLine");

final _isSubscribedFromFamilySharing = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
),
    bool Function(
  Pointer<ISteamApps>,
)>("SteamAPI_ISteamApps_BIsSubscribedFromFamilySharing");

final _isTimedTrial = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamApps>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamApps>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamApps_BIsTimedTrial");

extension ISteamAppsExtensions on Pointer<ISteamApps> {
  bool isSubscribed() => _isSubscribed.call(
        this,
      );

  bool isLowViolence() => _isLowViolence.call(
        this,
      );

  bool isCybercafe() => _isCybercafe.call(
        this,
      );

  bool isVACBanned() => _isVACBanned.call(
        this,
      );

  Pointer<Utf8> getCurrentGameLanguage() => _getCurrentGameLanguage.call(
        this,
      );

  Pointer<Utf8> getAvailableGameLanguages() => _getAvailableGameLanguages.call(
        this,
      );

  bool isSubscribedApp(
    AppId appId,
  ) =>
      _isSubscribedApp.call(
        this,
        appId,
      );

  bool isDlcInstalled(
    AppId appId,
  ) =>
      _isDlcInstalled.call(
        this,
        appId,
      );

  int getEarliestPurchaseUnixTime(
    AppId nAppId,
  ) =>
      _getEarliestPurchaseUnixTime.call(
        this,
        nAppId,
      );

  bool isSubscribedFromFreeWeekend() => _isSubscribedFromFreeWeekend.call(
        this,
      );

  int getDLCCount() => _getDLCCount.call(
        this,
      );

  bool bGetDLCDataByIndex(
    int iDLC,
    Pointer<UnsignedInt> pAppId,
    Pointer<Bool> pbAvailable,
    Pointer<Utf8> name,
    int cchNameBufferSize,
  ) =>
      _bGetDLCDataByIndex.call(
        this,
        iDLC,
        pAppId,
        pbAvailable,
        name,
        cchNameBufferSize,
      );

  void installDLC(
    AppId nAppId,
  ) =>
      _installDLC.call(
        this,
        nAppId,
      );

  void uninstallDLC(
    AppId nAppId,
  ) =>
      _uninstallDLC.call(
        this,
        nAppId,
      );

  void requestAppProofOfPurchaseKey(
    AppId nAppId,
  ) =>
      _requestAppProofOfPurchaseKey.call(
        this,
        nAppId,
      );

  bool getCurrentBetaName(
    Pointer<Utf8> name,
    int cchNameBufferSize,
  ) =>
      _getCurrentBetaName.call(
        this,
        name,
        cchNameBufferSize,
      );

  bool markContentCorrupt(
    bool missingFilesOnly,
  ) =>
      _markContentCorrupt.call(
        this,
        missingFilesOnly,
      );

  int getInstalledDepots(
    AppId appId,
    Pointer<UnsignedInt> pvecDepots,
    int cMaxDepots,
  ) =>
      _getInstalledDepots.call(
        this,
        appId,
        pvecDepots,
        cMaxDepots,
      );

  int getAppInstallDir(
    AppId appId,
    Pointer<Utf8> folder,
    int cchFolderBufferSize,
  ) =>
      _getAppInstallDir.call(
        this,
        appId,
        folder,
        cchFolderBufferSize,
      );

  bool isAppInstalled(
    AppId appId,
  ) =>
      _isAppInstalled.call(
        this,
        appId,
      );

  CSteamId getAppOwner() => _getAppOwner.call(
        this,
      );

  Pointer<Utf8> getLaunchQueryParam(
    Pointer<Utf8> key,
  ) =>
      _getLaunchQueryParam.call(
        this,
        key,
      );

  bool getDlcDownloadProgress(
    AppId nAppId,
    Pointer<UnsignedLongLong> punBytesDownloaded,
    Pointer<UnsignedLongLong> punBytesTotal,
  ) =>
      _getDlcDownloadProgress.call(
        this,
        nAppId,
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

  bool isSubscribedFromFamilySharing() => _isSubscribedFromFamilySharing.call(
        this,
      );

  bool isTimedTrial(
    Pointer<UnsignedInt> punSecondsAllowed,
    Pointer<UnsignedInt> punSecondsPlayed,
  ) =>
      _isTimedTrial.call(
        this,
        punSecondsAllowed,
        punSecondsPlayed,
      );
}
