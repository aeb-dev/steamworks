import "dart:ffi";
import "../steam_api.dart";
import "../enums/audio_playback_status.dart";

class SteamMusic extends Opaque {
  static Pointer<SteamMusic> steamMusic() => nullptr;
}

final _bIsEnabled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusic>,
),
    bool Function(
  Pointer<SteamMusic>,
)>("SteamAPI_ISteamMusic_BIsEnabled");

final _bIsPlaying = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusic>,
),
    bool Function(
  Pointer<SteamMusic>,
)>("SteamAPI_ISteamMusic_BIsPlaying");

final _getPlaybackStatus = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamMusic>,
),
    AudioPlaybackStatus Function(
  Pointer<SteamMusic>,
)>("SteamAPI_ISteamMusic_GetPlaybackStatus");

final _play = dl.lookupFunction<
    Void Function(
  Pointer<SteamMusic>,
),
    void Function(
  Pointer<SteamMusic>,
)>("SteamAPI_ISteamMusic_Play");

final _pause = dl.lookupFunction<
    Void Function(
  Pointer<SteamMusic>,
),
    void Function(
  Pointer<SteamMusic>,
)>("SteamAPI_ISteamMusic_Pause");

final _playPrevious = dl.lookupFunction<
    Void Function(
  Pointer<SteamMusic>,
),
    void Function(
  Pointer<SteamMusic>,
)>("SteamAPI_ISteamMusic_PlayPrevious");

final _playNext = dl.lookupFunction<
    Void Function(
  Pointer<SteamMusic>,
),
    void Function(
  Pointer<SteamMusic>,
)>("SteamAPI_ISteamMusic_PlayNext");

final _setVolume = dl.lookupFunction<
    Void Function(
  Pointer<SteamMusic>,
  Float,
),
    void Function(
  Pointer<SteamMusic>,
  double,
)>("SteamAPI_ISteamMusic_SetVolume");

final _getVolume = dl.lookupFunction<
    Float Function(
  Pointer<SteamMusic>,
),
    double Function(
  Pointer<SteamMusic>,
)>("SteamAPI_ISteamMusic_GetVolume");

extension SteamMusicExtensions on Pointer<SteamMusic> {
  bool bIsEnabled() => _bIsEnabled.call(
        this,
      );

  bool bIsPlaying() => _bIsPlaying.call(
        this,
      );

  AudioPlaybackStatus getPlaybackStatus() => _getPlaybackStatus.call(
        this,
      );

  void play() => _play.call(
        this,
      );

  void pause() => _pause.call(
        this,
      );

  void playPrevious() => _playPrevious.call(
        this,
      );

  void playNext() => _playNext.call(
        this,
      );

  void setVolume(
    double flVolume,
  ) =>
      _setVolume.call(
        this,
        flVolume,
      );

  double getVolume() => _getVolume.call(
        this,
      );
}
