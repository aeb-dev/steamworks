// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/eaudio_playback_status.dart";

final _steamMusicRemote = dl.lookupFunction<
    Pointer<ISteamMusicRemote> Function(),
    Pointer<ISteamMusicRemote> Function()>("SteamAPI_SteamMusicRemote_v001");

class ISteamMusicRemote extends Opaque {
  static Pointer<ISteamMusicRemote> get userInstance => _steamMusicRemote();
}

final _registerSteamMusicRemote = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_RegisterSteamMusicRemote");

final _deregisterSteamMusicRemote = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_DeregisterSteamMusicRemote");

final _isCurrentMusicRemote = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_BIsCurrentMusicRemote");

final _bActivationSuccess = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_BActivationSuccess");

final _setDisplayName = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_SetDisplayName");

final _setPNGIcon64x64 = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Void>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamMusicRemote_SetPNGIcon_64x64");

final _enablePlayPrevious = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnablePlayPrevious");

final _enablePlayNext = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnablePlayNext");

final _enableShuffled = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnableShuffled");

final _enableLooped = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnableLooped");

final _enableQueue = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnableQueue");

final _enablePlaylists = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnablePlaylists");

final _updatePlaybackStatus = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Int32,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  AudioPlaybackStatus,
)>("SteamAPI_ISteamMusicRemote_UpdatePlaybackStatus");

final _updateShuffled = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_UpdateShuffled");

final _updateLooped = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_UpdateLooped");

final _updateVolume = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Float,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  double,
)>("SteamAPI_ISteamMusicRemote_UpdateVolume");

final _currentEntryWillChange = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_CurrentEntryWillChange");

final _currentEntryIsAvailable = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_CurrentEntryIsAvailable");

final _updateCurrentEntryText = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_UpdateCurrentEntryText");

final _updateCurrentEntryElapsedSeconds = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Int,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  int,
)>("SteamAPI_ISteamMusicRemote_UpdateCurrentEntryElapsedSeconds");

final _updateCurrentEntryCoverArt = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Void>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamMusicRemote_UpdateCurrentEntryCoverArt");

final _currentEntryDidChange = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_CurrentEntryDidChange");

final _queueWillChange = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_QueueWillChange");

final _resetQueueEntries = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_ResetQueueEntries");

final _setQueueEntry = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Int,
  Int,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  int,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_SetQueueEntry");

final _setCurrentQueueEntry = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Int,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  int,
)>("SteamAPI_ISteamMusicRemote_SetCurrentQueueEntry");

final _queueDidChange = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_QueueDidChange");

final _playlistWillChange = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_PlaylistWillChange");

final _resetPlaylistEntries = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_ResetPlaylistEntries");

final _setPlaylistEntry = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Int,
  Int,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  int,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_SetPlaylistEntry");

final _setCurrentPlaylistEntry = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
  Int,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
  int,
)>("SteamAPI_ISteamMusicRemote_SetCurrentPlaylistEntry");

final _playlistDidChange = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMusicRemote>,
),
    bool Function(
  Pointer<ISteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_PlaylistDidChange");

extension ISteamMusicRemoteExtensions on Pointer<ISteamMusicRemote> {
  bool registerSteamMusicRemote(
    Pointer<Utf8> name,
  ) =>
      _registerSteamMusicRemote.call(
        this,
        name,
      );

  bool deregisterSteamMusicRemote() => _deregisterSteamMusicRemote.call(
        this,
      );

  bool isCurrentMusicRemote() => _isCurrentMusicRemote.call(
        this,
      );

  bool bActivationSuccess(
    bool value,
  ) =>
      _bActivationSuccess.call(
        this,
        value,
      );

  bool setDisplayName(
    Pointer<Utf8> displayName,
  ) =>
      _setDisplayName.call(
        this,
        displayName,
      );

  bool setPNGIcon64x64(
    Pointer<Void> pvBuffer,
    int cbBufferLength,
  ) =>
      _setPNGIcon64x64.call(
        this,
        pvBuffer,
        cbBufferLength,
      );

  bool enablePlayPrevious(
    bool value,
  ) =>
      _enablePlayPrevious.call(
        this,
        value,
      );

  bool enablePlayNext(
    bool value,
  ) =>
      _enablePlayNext.call(
        this,
        value,
      );

  bool enableShuffled(
    bool value,
  ) =>
      _enableShuffled.call(
        this,
        value,
      );

  bool enableLooped(
    bool value,
  ) =>
      _enableLooped.call(
        this,
        value,
      );

  bool enableQueue(
    bool value,
  ) =>
      _enableQueue.call(
        this,
        value,
      );

  bool enablePlaylists(
    bool value,
  ) =>
      _enablePlaylists.call(
        this,
        value,
      );

  bool updatePlaybackStatus(
    AudioPlaybackStatus nStatus,
  ) =>
      _updatePlaybackStatus.call(
        this,
        nStatus,
      );

  bool updateShuffled(
    bool value,
  ) =>
      _updateShuffled.call(
        this,
        value,
      );

  bool updateLooped(
    bool value,
  ) =>
      _updateLooped.call(
        this,
        value,
      );

  bool updateVolume(
    double value,
  ) =>
      _updateVolume.call(
        this,
        value,
      );

  bool currentEntryWillChange() => _currentEntryWillChange.call(
        this,
      );

  bool currentEntryIsAvailable(
    bool available,
  ) =>
      _currentEntryIsAvailable.call(
        this,
        available,
      );

  bool updateCurrentEntryText(
    Pointer<Utf8> text,
  ) =>
      _updateCurrentEntryText.call(
        this,
        text,
      );

  bool updateCurrentEntryElapsedSeconds(
    int nValue,
  ) =>
      _updateCurrentEntryElapsedSeconds.call(
        this,
        nValue,
      );

  bool updateCurrentEntryCoverArt(
    Pointer<Void> pvBuffer,
    int cbBufferLength,
  ) =>
      _updateCurrentEntryCoverArt.call(
        this,
        pvBuffer,
        cbBufferLength,
      );

  bool currentEntryDidChange() => _currentEntryDidChange.call(
        this,
      );

  bool queueWillChange() => _queueWillChange.call(
        this,
      );

  bool resetQueueEntries() => _resetQueueEntries.call(
        this,
      );

  bool setQueueEntry(
    int nId,
    int nPosition,
    Pointer<Utf8> entryText,
  ) =>
      _setQueueEntry.call(
        this,
        nId,
        nPosition,
        entryText,
      );

  bool setCurrentQueueEntry(
    int nId,
  ) =>
      _setCurrentQueueEntry.call(
        this,
        nId,
      );

  bool queueDidChange() => _queueDidChange.call(
        this,
      );

  bool playlistWillChange() => _playlistWillChange.call(
        this,
      );

  bool resetPlaylistEntries() => _resetPlaylistEntries.call(
        this,
      );

  bool setPlaylistEntry(
    int nId,
    int nPosition,
    Pointer<Utf8> entryText,
  ) =>
      _setPlaylistEntry.call(
        this,
        nId,
        nPosition,
        entryText,
      );

  bool setCurrentPlaylistEntry(
    int nId,
  ) =>
      _setCurrentPlaylistEntry.call(
        this,
        nId,
      );

  bool playlistDidChange() => _playlistDidChange.call(
        this,
      );
}
