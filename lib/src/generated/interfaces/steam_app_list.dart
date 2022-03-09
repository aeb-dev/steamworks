import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../typedefs.dart";

class SteamAppList extends Opaque {
  static Pointer<SteamAppList> steamAppList() => nullptr;
}

final _getNumInstalledApps = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamAppList>,
),
    int Function(
  Pointer<SteamAppList>,
)>("SteamAPI_ISteamAppList_GetNumInstalledApps");

final _getInstalledApps = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamAppList>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamAppList>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamAppList_GetInstalledApps");

final _getAppName = dl.lookupFunction<
    Int Function(
  Pointer<SteamAppList>,
  UnsignedInt,
  Pointer<Utf8>,
  Int,
),
    int Function(
  Pointer<SteamAppList>,
  AppId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamAppList_GetAppName");

final _getAppInstallDir = dl.lookupFunction<
    Int Function(
  Pointer<SteamAppList>,
  UnsignedInt,
  Pointer<Utf8>,
  Int,
),
    int Function(
  Pointer<SteamAppList>,
  AppId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamAppList_GetAppInstallDir");

final _getAppBuildId = dl.lookupFunction<
    Int Function(
  Pointer<SteamAppList>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamAppList>,
  AppId,
)>("SteamAPI_ISteamAppList_GetAppBuildId");

extension SteamAppListExtensions on Pointer<SteamAppList> {
  int getNumInstalledApps() => _getNumInstalledApps.call(
        this,
      );

  int getInstalledApps(
    Pointer<UnsignedInt> pvecAppID,
    int unMaxAppIDs,
  ) =>
      _getInstalledApps.call(
        this,
        pvecAppID,
        unMaxAppIDs,
      );

  int getAppName(
    AppId nAppID,
    Pointer<Utf8> pchName,
    int cchNameMax,
  ) =>
      _getAppName.call(
        this,
        nAppID,
        pchName,
        cchNameMax,
      );

  int getAppInstallDir(
    AppId nAppID,
    Pointer<Utf8> pchDirectory,
    int cchNameMax,
  ) =>
      _getAppInstallDir.call(
        this,
        nAppID,
        pchDirectory,
        cchNameMax,
      );

  int getAppBuildId(
    AppId nAppID,
  ) =>
      _getAppBuildId.call(
        this,
        nAppID,
      );
}
