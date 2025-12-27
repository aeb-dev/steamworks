// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/etimeline_event_clip_priority.dart";
import "../enums/etimeline_game_mode.dart";
import "../typedefs.dart";

final _steamTimeline = dl.lookupFunction<Pointer<ISteamTimeline> Function(),
    Pointer<ISteamTimeline> Function()>("SteamAPI_SteamTimeline_v004");

final class ISteamTimeline extends Opaque {
  static Pointer<ISteamTimeline> get userInstance => _steamTimeline();
}

final _setTimelineTooltip = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Float,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      double,
    )>("SteamAPI_ISteamTimeline_SetTimelineTooltip");

final _clearTimelineTooltip = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      Float,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      double,
    )>("SteamAPI_ISteamTimeline_ClearTimelineTooltip");

final _setTimelineGameMode = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      ETimelineGameModeAliasC,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      ETimelineGameModeAliasDart,
    )>("SteamAPI_ISteamTimeline_SetTimelineGameMode");

final _addInstantaneousTimelineEvent = dl.lookupFunction<
    UnsignedLongLong Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      UnsignedInt,
      Float,
      ETimelineEventClipPriorityAliasC,
    ),
    TimelineEventHandle Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      int,
      double,
      ETimelineEventClipPriorityAliasDart,
    )>("SteamAPI_ISteamTimeline_AddInstantaneousTimelineEvent");

final _addRangeTimelineEvent = dl.lookupFunction<
    UnsignedLongLong Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      UnsignedInt,
      Float,
      Float,
      ETimelineEventClipPriorityAliasC,
    ),
    TimelineEventHandle Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      int,
      double,
      double,
      ETimelineEventClipPriorityAliasDart,
    )>("SteamAPI_ISteamTimeline_AddRangeTimelineEvent");

final _startRangeTimelineEvent = dl.lookupFunction<
    UnsignedLongLong Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      UnsignedInt,
      Float,
      ETimelineEventClipPriorityAliasC,
    ),
    TimelineEventHandle Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      int,
      double,
      ETimelineEventClipPriorityAliasDart,
    )>("SteamAPI_ISteamTimeline_StartRangeTimelineEvent");

final _updateRangeTimelineEvent = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      UnsignedLongLong,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      UnsignedInt,
      ETimelineEventClipPriorityAliasC,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      TimelineEventHandle,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      int,
      ETimelineEventClipPriorityAliasDart,
    )>("SteamAPI_ISteamTimeline_UpdateRangeTimelineEvent");

final _endRangeTimelineEvent = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      UnsignedLongLong,
      Float,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      TimelineEventHandle,
      double,
    )>("SteamAPI_ISteamTimeline_EndRangeTimelineEvent");

final _removeTimelineEvent = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      UnsignedLongLong,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      TimelineEventHandle,
    )>("SteamAPI_ISteamTimeline_RemoveTimelineEvent");

final _doesEventRecordingExist = dl.lookupFunction<
    UnsignedLongLong Function(
      Pointer<ISteamTimeline>,
      UnsignedLongLong,
    ),
    SteamApiCall Function(
      Pointer<ISteamTimeline>,
      TimelineEventHandle,
    )>("SteamAPI_ISteamTimeline_DoesEventRecordingExist");

final _startGamePhase = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
    ),
    void Function(
      Pointer<ISteamTimeline>,
    )>("SteamAPI_ISteamTimeline_StartGamePhase");

final _endGamePhase = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
    ),
    void Function(
      Pointer<ISteamTimeline>,
    )>("SteamAPI_ISteamTimeline_EndGamePhase");

final _setGamePhaseId = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamTimeline_SetGamePhaseID");

final _doesGamePhaseRecordingExist = dl.lookupFunction<
    UnsignedLongLong Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
    ),
    SteamApiCall Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamTimeline_DoesGamePhaseRecordingExist");

final _addGamePhaseTag = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      UnsignedInt,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      int,
    )>("SteamAPI_ISteamTimeline_AddGamePhaseTag");

final _setGamePhaseAttribute = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      UnsignedInt,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
      Pointer<Utf8>,
      int,
    )>("SteamAPI_ISteamTimeline_SetGamePhaseAttribute");

final _openOverlayToGamePhase = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      Pointer<Utf8>,
    )>("SteamAPI_ISteamTimeline_OpenOverlayToGamePhase");

final _openOverlayToTimelineEvent = dl.lookupFunction<
    Void Function(
      Pointer<ISteamTimeline>,
      UnsignedLongLong,
    ),
    void Function(
      Pointer<ISteamTimeline>,
      TimelineEventHandle,
    )>("SteamAPI_ISteamTimeline_OpenOverlayToTimelineEvent");

extension ISteamTimelineExtensions on Pointer<ISteamTimeline> {
  void setTimelineTooltip(
    Pointer<Utf8> description,
    double timeDelta,
  ) =>
      _setTimelineTooltip.call(
        this,
        description,
        timeDelta,
      );

  void clearTimelineTooltip(
    double timeDelta,
  ) =>
      _clearTimelineTooltip.call(
        this,
        timeDelta,
      );

  void setTimelineGameMode(
    ETimelineGameMode mode,
  ) =>
      _setTimelineGameMode.call(
        this,
        mode.value,
      );

  TimelineEventHandle addInstantaneousTimelineEvent(
    Pointer<Utf8> title,
    Pointer<Utf8> description,
    Pointer<Utf8> icon,
    int iconPriority,
    double startOffsetSeconds,
    ETimelineEventClipPriority possibleClip,
  ) =>
      _addInstantaneousTimelineEvent.call(
        this,
        title,
        description,
        icon,
        iconPriority,
        startOffsetSeconds,
        possibleClip.value,
      );

  TimelineEventHandle addRangeTimelineEvent(
    Pointer<Utf8> title,
    Pointer<Utf8> description,
    Pointer<Utf8> icon,
    int iconPriority,
    double startOffsetSeconds,
    double duration,
    ETimelineEventClipPriority possibleClip,
  ) =>
      _addRangeTimelineEvent.call(
        this,
        title,
        description,
        icon,
        iconPriority,
        startOffsetSeconds,
        duration,
        possibleClip.value,
      );

  TimelineEventHandle startRangeTimelineEvent(
    Pointer<Utf8> title,
    Pointer<Utf8> description,
    Pointer<Utf8> icon,
    int priority,
    double startOffsetSeconds,
    ETimelineEventClipPriority possibleClip,
  ) =>
      _startRangeTimelineEvent.call(
        this,
        title,
        description,
        icon,
        priority,
        startOffsetSeconds,
        possibleClip.value,
      );

  void updateRangeTimelineEvent(
    TimelineEventHandle ulEvent,
    Pointer<Utf8> title,
    Pointer<Utf8> description,
    Pointer<Utf8> icon,
    int priority,
    ETimelineEventClipPriority possibleClip,
  ) =>
      _updateRangeTimelineEvent.call(
        this,
        ulEvent,
        title,
        description,
        icon,
        priority,
        possibleClip.value,
      );

  void endRangeTimelineEvent(
    TimelineEventHandle ulEvent,
    double endOffsetSeconds,
  ) =>
      _endRangeTimelineEvent.call(
        this,
        ulEvent,
        endOffsetSeconds,
      );

  void removeTimelineEvent(
    TimelineEventHandle ulEvent,
  ) =>
      _removeTimelineEvent.call(
        this,
        ulEvent,
      );

  SteamApiCall doesEventRecordingExist(
    TimelineEventHandle ulEvent,
  ) =>
      _doesEventRecordingExist.call(
        this,
        ulEvent,
      );

  void startGamePhase() => _startGamePhase.call(
        this,
      );

  void endGamePhase() => _endGamePhase.call(
        this,
      );

  void setGamePhaseId(
    Pointer<Utf8> phaseId,
  ) =>
      _setGamePhaseId.call(
        this,
        phaseId,
      );

  SteamApiCall doesGamePhaseRecordingExist(
    Pointer<Utf8> phaseId,
  ) =>
      _doesGamePhaseRecordingExist.call(
        this,
        phaseId,
      );

  void addGamePhaseTag(
    Pointer<Utf8> tagName,
    Pointer<Utf8> tagIcon,
    Pointer<Utf8> tagGroup,
    int priority,
  ) =>
      _addGamePhaseTag.call(
        this,
        tagName,
        tagIcon,
        tagGroup,
        priority,
      );

  void setGamePhaseAttribute(
    Pointer<Utf8> attributeGroup,
    Pointer<Utf8> attributeValue,
    int priority,
  ) =>
      _setGamePhaseAttribute.call(
        this,
        attributeGroup,
        attributeValue,
        priority,
      );

  void openOverlayToGamePhase(
    Pointer<Utf8> phaseId,
  ) =>
      _openOverlayToGamePhase.call(
        this,
        phaseId,
      );

  void openOverlayToTimelineEvent(
    TimelineEventHandle ulEvent,
  ) =>
      _openOverlayToTimelineEvent.call(
        this,
        ulEvent,
      );
}
