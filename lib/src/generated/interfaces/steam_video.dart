import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";
import "../typedefs.dart";

final _steamVideo = dl.lookupFunction<Pointer<SteamVideo> Function(),
    Pointer<SteamVideo> Function()>("SteamAPI_SteamVideo_v002");

class SteamVideo extends Opaque {
  static Pointer<SteamVideo> get userInstance => _steamVideo();
}

final _getVideoUrl = dl.lookupFunction<
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

final _getOpfSettings = dl.lookupFunction<
    Void Function(
  Pointer<SteamVideo>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamVideo>,
  AppId,
)>("SteamAPI_ISteamVideo_GetOPFSettings");

final _getOpfStringForApp = dl.lookupFunction<
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
  void getVideoUrl(
    AppId videoAppId,
  ) =>
      _getVideoUrl.call(
        this,
        videoAppId,
      );

  bool isBroadcasting(
    Pointer<Int> pnNumViewers,
  ) =>
      _isBroadcasting.call(
        this,
        pnNumViewers,
      );

  void getOpfSettings(
    AppId videoAppId,
  ) =>
      _getOpfSettings.call(
        this,
        videoAppId,
      );

  bool getOpfStringForApp(
    AppId videoAppId,
    Pointer<Utf8> buffer,
    Pointer<Int> pnBufferSize,
  ) =>
      _getOpfStringForApp.call(
        this,
        videoAppId,
        buffer,
        pnBufferSize,
      );
}
