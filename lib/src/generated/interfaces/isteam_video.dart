// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";
import "../typedefs.dart";

final _steamVideo = dl.lookupFunction<Pointer<ISteamVideo> Function(),
    Pointer<ISteamVideo> Function()>("SteamAPI_SteamVideo_v002");

class ISteamVideo extends Opaque {
  static Pointer<ISteamVideo> get userInstance => _steamVideo();
}

final _getVideoUrl = dl.lookupFunction<
    Void Function(
  Pointer<ISteamVideo>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamVideo>,
  AppId,
)>("SteamAPI_ISteamVideo_GetVideoURL");

final _isBroadcasting = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamVideo>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamVideo>,
  Pointer<Int>,
)>("SteamAPI_ISteamVideo_IsBroadcasting");

final _getOpfSettings = dl.lookupFunction<
    Void Function(
  Pointer<ISteamVideo>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamVideo>,
  AppId,
)>("SteamAPI_ISteamVideo_GetOPFSettings");

final _getOpfStringForApp = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamVideo>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamVideo>,
  AppId,
  Pointer<Utf8>,
  Pointer<Int>,
)>("SteamAPI_ISteamVideo_GetOPFStringForApp");

extension ISteamVideoExtensions on Pointer<ISteamVideo> {
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
