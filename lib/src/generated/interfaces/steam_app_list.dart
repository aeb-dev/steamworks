import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";
import "../typedefs.dart";

final _steamAppList = dl.lookupFunction<Pointer<SteamAppList> Function(),
    Pointer<SteamAppList> Function()>("SteamAPI_SteamAppList_v001");

class SteamAppList extends Opaque {
  static Pointer<SteamAppList> get userInstance => _steamAppList();
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
    Pointer<UnsignedInt> pvecAppId,
    int maxAppIds,
  ) =>
      _getInstalledApps.call(
        this,
        pvecAppId,
        maxAppIds,
      );

  int getAppName(
    AppId nAppId,
    Pointer<Utf8> name,
    int cchNameMax,
  ) =>
      _getAppName.call(
        this,
        nAppId,
        name,
        cchNameMax,
      );

  int getAppInstallDir(
    AppId nAppId,
    Pointer<Utf8> directory,
    int cchNameMax,
  ) =>
      _getAppInstallDir.call(
        this,
        nAppId,
        directory,
        cchNameMax,
      );

  int getAppBuildId(
    AppId nAppId,
  ) =>
      _getAppBuildId.call(
        this,
        nAppId,
      );
}
