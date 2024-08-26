// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/etimeline_event_clip_priority.dart";
import "../enums/etimeline_game_mode.dart";

final _steamTimeline = dl.lookupFunction<Pointer<ISteamTimeline> Function(),
    Pointer<ISteamTimeline> Function()>("SteamAPI_SteamTimeline_v001");

final class ISteamTimeline extends Opaque {
  static Pointer<ISteamTimeline> get userInstance => _steamTimeline();
}

final _setTimelineStateDescription = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Float,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      double,
    )>("SteamAPI_ISteamTimeline_SetTimelineStateDescription");

final _clearTimelineStateDescription = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      Float,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      double,
    )>("SteamAPI_ISteamTimeline_ClearTimelineStateDescription");

final _addTimelineEvent = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      UnsignedInt,
      Float,
      Float,
      ETimelineEventClipPriorityAliasC,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      int,
      double,
      double,
      ETimelineEventClipPriorityAliasDart,
    )>("SteamAPI_ISteamTimeline_AddTimelineEvent");

final _setTimelineGameMode = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      ETimelineGameModeAliasC,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      ETimelineGameModeAliasDart,
    )>("SteamAPI_ISteamTimeline_SetTimelineGameMode");

extension ISteamTimelineExtensions on Pointer<ISteamTimeline> {
  void setTimelineStateDescription(
    Pointer<Utf8> description,
    double timeDelta,
  ) =>
      _setTimelineStateDescription.call(
        this,
        description,
        timeDelta,
      );

  void clearTimelineStateDescription(
    double timeDelta,
  ) =>
      _clearTimelineStateDescription.call(
        this,
        timeDelta,
      );

  void addTimelineEvent(
    Pointer<Utf8> icon,
    Pointer<Utf8> title,
    Pointer<Utf8> description,
    int priority,
    double startOffsetSeconds,
    double durationSeconds,
    ETimelineEventClipPriority possibleClip,
  ) =>
      _addTimelineEvent.call(
        this,
        icon,
        title,
        description,
        priority,
        startOffsetSeconds,
        durationSeconds,
        possibleClip.value,
      );

  void setTimelineGameMode(
    ETimelineGameMode mode,
  ) =>
      _setTimelineGameMode.call(
        this,
        mode.value,
      );
}
