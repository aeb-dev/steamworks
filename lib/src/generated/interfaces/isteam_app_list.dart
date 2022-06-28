// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";
import "../typedefs.dart";

final _steamAppList = dl.lookupFunction<Pointer<ISteamAppList> Function(),
    Pointer<ISteamAppList> Function()>("SteamAPI_SteamAppList_v001");

class ISteamAppList extends Opaque {
  static Pointer<ISteamAppList> get userInstance => _steamAppList();
}

final _getNumInstalledApps = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamAppList>,
),
    int Function(
  Pointer<ISteamAppList>,
)>("SteamAPI_ISteamAppList_GetNumInstalledApps");

final _getInstalledApps = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamAppList>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamAppList>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamAppList_GetInstalledApps");

final _getAppName = dl.lookupFunction<
    Int Function(
  Pointer<ISteamAppList>,
  UnsignedInt,
  Pointer<Utf8>,
  Int,
),
    int Function(
  Pointer<ISteamAppList>,
  AppId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamAppList_GetAppName");

final _getAppInstallDir = dl.lookupFunction<
    Int Function(
  Pointer<ISteamAppList>,
  UnsignedInt,
  Pointer<Utf8>,
  Int,
),
    int Function(
  Pointer<ISteamAppList>,
  AppId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamAppList_GetAppInstallDir");

final _getAppBuildId = dl.lookupFunction<
    Int Function(
  Pointer<ISteamAppList>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamAppList>,
  AppId,
)>("SteamAPI_ISteamAppList_GetAppBuildId");

extension ISteamAppListExtensions on Pointer<ISteamAppList> {
  int getNumInstalledApps() => _getNumInstalledApps.call(
        this,
      );

  int getInstalledApps(
    Pointer<UnsignedInt> appId,
    int maxAppIds,
  ) =>
      _getInstalledApps.call(
        this,
        appId,
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
