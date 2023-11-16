// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/etimeline_game_mode.dart";
import "../typedefs.dart";

final _steamVideo = dl.lookupFunction<Pointer<ISteamVideo> Function(),
    Pointer<ISteamVideo> Function()>("SteamAPI_SteamVideo_v003");

final class ISteamVideo extends Opaque {
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

final _addTimelineHighlightMarker = dl.lookupFunction<
    Void Function(
      Pointer<ISteamVideo>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      UnsignedInt,
    ),
    void Function(
      Pointer<ISteamVideo>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      int,
    )>("SteamAPI_ISteamVideo_AddTimelineHighlightMarker");

final _addTimelineTimestamp = dl.lookupFunction<
    Void Function(
      Pointer<ISteamVideo>,
      Pointer<Utf8>,
    ),
    void Function(
      Pointer<ISteamVideo>,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamVideo_AddTimelineTimestamp");

final _addTimelineRangeStart = dl.lookupFunction<
    Void Function(
      Pointer<ISteamVideo>,
      Pointer<Utf8>,
      Pointer<Utf8>,
    ),
    void Function(
      Pointer<ISteamVideo>,
      Pointer<Utf8>,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamVideo_AddTimelineRangeStart");

final _addTimelineRangeEnd = dl.lookupFunction<
    Void Function(
      Pointer<ISteamVideo>,
      Pointer<Utf8>,
    ),
    void Function(
      Pointer<ISteamVideo>,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamVideo_AddTimelineRangeEnd");

final _setTimelineGameMode = dl.lookupFunction<
    Void Function(
      Pointer<ISteamVideo>,
      ETimelineGameModeAliasC,
    ),
    void Function(
      Pointer<ISteamVideo>,
      ETimelineGameModeAliasDart,
    )>("SteamAPI_ISteamVideo_SetTimelineGameMode");

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

  void addTimelineHighlightMarker(
    Pointer<Utf8> icon,
    Pointer<Utf8> title,
    Pointer<Utf8> description,
    int priority,
  ) =>
      _addTimelineHighlightMarker.call(
        this,
        icon,
        title,
        description,
        priority,
      );

  void addTimelineTimestamp(
    Pointer<Utf8> title,
  ) =>
      _addTimelineTimestamp.call(
        this,
        title,
      );

  void addTimelineRangeStart(
    Pointer<Utf8> id,
    Pointer<Utf8> title,
  ) =>
      _addTimelineRangeStart.call(
        this,
        id,
        title,
      );

  void addTimelineRangeEnd(
    Pointer<Utf8> id,
  ) =>
      _addTimelineRangeEnd.call(
        this,
        id,
      );

  void setTimelineGameMode(
    ETimelineGameMode mode,
  ) =>
      _setTimelineGameMode.call(
        this,
        mode.value,
      );
}
