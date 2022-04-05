// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../dl.dart";
import "../enums/eaudio_playback_status.dart";

final _steamMusic = dl.lookupFunction<Pointer<ISteamMusic> Function(),
    Pointer<ISteamMusic> Function()>("SteamAPI_SteamMusic_v001");

class ISteamMusic extends Opaque {
  static Pointer<ISteamMusic> get userInstance => _steamMusic();
}

final _isEnabled = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusic>,
),
    bool Function(
  Pointer<ISteamMusic>,
)>("SteamAPI_ISteamMusic_BIsEnabled");

final _isPlaying = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusic>,
),
    bool Function(
  Pointer<ISteamMusic>,
)>("SteamAPI_ISteamMusic_BIsPlaying");

final _getPlaybackStatus = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamMusic>,
),
    AudioPlaybackStatus Function(
  Pointer<ISteamMusic>,
)>("SteamAPI_ISteamMusic_GetPlaybackStatus");

final _play = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMusic>,
),
    void Function(
  Pointer<ISteamMusic>,
)>("SteamAPI_ISteamMusic_Play");

final _pause = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMusic>,
),
    void Function(
  Pointer<ISteamMusic>,
)>("SteamAPI_ISteamMusic_Pause");

final _playPrevious = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMusic>,
),
    void Function(
  Pointer<ISteamMusic>,
)>("SteamAPI_ISteamMusic_PlayPrevious");

final _playNext = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMusic>,
),
    void Function(
  Pointer<ISteamMusic>,
)>("SteamAPI_ISteamMusic_PlayNext");

final _setVolume = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMusic>,
  Float,
),
    void Function(
  Pointer<ISteamMusic>,
  double,
)>("SteamAPI_ISteamMusic_SetVolume");

final _getVolume = dl.lookupFunction<
    Float Function(
  Pointer<ISteamMusic>,
),
    double Function(
  Pointer<ISteamMusic>,
)>("SteamAPI_ISteamMusic_GetVolume");

extension ISteamMusicExtensions on Pointer<ISteamMusic> {
  bool isEnabled() => _isEnabled.call(
        this,
      );

  bool isPlaying() => _isPlaying.call(
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
    double volume,
  ) =>
      _setVolume.call(
        this,
        volume,
      );

  double getVolume() => _getVolume.call(
        this,
      );
}
