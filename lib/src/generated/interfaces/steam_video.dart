import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../typedefs.dart";

class SteamVideo extends Opaque {
  static Pointer<SteamVideo> steamVideo() => nullptr;
}

final _getVideoURL = dl.lookupFunction<
    Void Function(
  Pointer<SteamVideo>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamVideo>,
  AppId,
)>("SteamAPI_ISteamVideo_GetVideoURL");

final _isBroadcasting = dl.lookupFunction<
    Bool Function(
  Pointer<SteamVideo>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamVideo>,
  Pointer<Int>,
)>("SteamAPI_ISteamVideo_IsBroadcasting");

final _getOPFSettings = dl.lookupFunction<
    Void Function(
  Pointer<SteamVideo>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamVideo>,
  AppId,
)>("SteamAPI_ISteamVideo_GetOPFSettings");

final _getOPFStringForApp = dl.lookupFunction<
    Bool Function(
  Pointer<SteamVideo>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamVideo>,
  AppId,
  Pointer<Utf8>,
  Pointer<Int>,
)>("SteamAPI_ISteamVideo_GetOPFStringForApp");

extension SteamVideoExtensions on Pointer<SteamVideo> {
  void getVideoURL(
    AppId unVideoAppID,
  ) =>
      _getVideoURL.call(
        this,
        unVideoAppID,
      );

  bool isBroadcasting(
    Pointer<Int> pnNumViewers,
  ) =>
      _isBroadcasting.call(
        this,
        pnNumViewers,
      );

  void getOPFSettings(
    AppId unVideoAppID,
  ) =>
      _getOPFSettings.call(
        this,
        unVideoAppID,
      );

  bool getOPFStringForApp(
    AppId unVideoAppID,
    Pointer<Utf8> pchBuffer,
    Pointer<Int> pnBufferSize,
  ) =>
      _getOPFStringForApp.call(
        this,
        unVideoAppID,
        pchBuffer,
        pnBufferSize,
      );
}
