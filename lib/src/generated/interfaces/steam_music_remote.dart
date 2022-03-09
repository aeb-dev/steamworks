import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/audio_playback_status.dart";
import "../steam_api.dart";

class SteamMusicRemote extends Opaque {
  static Pointer<SteamMusicRemote> steamMusicRemote() => nullptr;
}

final _registerSteamMusicRemote = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_RegisterSteamMusicRemote");

final _deregisterSteamMusicRemote = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_DeregisterSteamMusicRemote");

final _bIsCurrentMusicRemote = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_BIsCurrentMusicRemote");

final _bActivationSuccess = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_BActivationSuccess");

final _setDisplayName = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_SetDisplayName");

final _setPNGIcon64x64 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Void>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamMusicRemote_SetPNGIcon_64x64");

final _enablePlayPrevious = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnablePlayPrevious");

final _enablePlayNext = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnablePlayNext");

final _enableShuffled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnableShuffled");

final _enableLooped = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnableLooped");

final _enableQueue = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnableQueue");

final _enablePlaylists = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_EnablePlaylists");

final _updatePlaybackStatus = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Int32,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  AudioPlaybackStatus,
)>("SteamAPI_ISteamMusicRemote_UpdatePlaybackStatus");

final _updateShuffled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_UpdateShuffled");

final _updateLooped = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_UpdateLooped");

final _updateVolume = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Float,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  double,
)>("SteamAPI_ISteamMusicRemote_UpdateVolume");

final _currentEntryWillChange = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_CurrentEntryWillChange");

final _currentEntryIsAvailable = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Bool,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  bool,
)>("SteamAPI_ISteamMusicRemote_CurrentEntryIsAvailable");

final _updateCurrentEntryText = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_UpdateCurrentEntryText");

final _updateCurrentEntryElapsedSeconds = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Int,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  int,
)>("SteamAPI_ISteamMusicRemote_UpdateCurrentEntryElapsedSeconds");

final _updateCurrentEntryCoverArt = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Void>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamMusicRemote_UpdateCurrentEntryCoverArt");

final _currentEntryDidChange = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_CurrentEntryDidChange");

final _queueWillChange = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_QueueWillChange");

final _resetQueueEntries = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_ResetQueueEntries");

final _setQueueEntry = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Int,
  Int,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  int,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_SetQueueEntry");

final _setCurrentQueueEntry = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Int,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  int,
)>("SteamAPI_ISteamMusicRemote_SetCurrentQueueEntry");

final _queueDidChange = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_QueueDidChange");

final _playlistWillChange = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_PlaylistWillChange");

final _resetPlaylistEntries = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_ResetPlaylistEntries");

final _setPlaylistEntry = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Int,
  Int,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  int,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMusicRemote_SetPlaylistEntry");

final _setCurrentPlaylistEntry = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
  Int,
),
    bool Function(
  Pointer<SteamMusicRemote>,
  int,
)>("SteamAPI_ISteamMusicRemote_SetCurrentPlaylistEntry");

final _playlistDidChange = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMusicRemote>,
),
    bool Function(
  Pointer<SteamMusicRemote>,
)>("SteamAPI_ISteamMusicRemote_PlaylistDidChange");

extension SteamMusicRemoteExtensions on Pointer<SteamMusicRemote> {
  bool registerSteamMusicRemote(
    Pointer<Utf8> pchName,
  ) =>
      _registerSteamMusicRemote.call(
        this,
        pchName,
      );

  bool deregisterSteamMusicRemote() => _deregisterSteamMusicRemote.call(
        this,
      );

  bool bIsCurrentMusicRemote() => _bIsCurrentMusicRemote.call(
        this,
      );

  bool bActivationSuccess(
    bool bValue,
  ) =>
      _bActivationSuccess.call(
        this,
        bValue,
      );

  bool setDisplayName(
    Pointer<Utf8> pchDisplayName,
  ) =>
      _setDisplayName.call(
        this,
        pchDisplayName,
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
    bool bValue,
  ) =>
      _enablePlayPrevious.call(
        this,
        bValue,
      );

  bool enablePlayNext(
    bool bValue,
  ) =>
      _enablePlayNext.call(
        this,
        bValue,
      );

  bool enableShuffled(
    bool bValue,
  ) =>
      _enableShuffled.call(
        this,
        bValue,
      );

  bool enableLooped(
    bool bValue,
  ) =>
      _enableLooped.call(
        this,
        bValue,
      );

  bool enableQueue(
    bool bValue,
  ) =>
      _enableQueue.call(
        this,
        bValue,
      );

  bool enablePlaylists(
    bool bValue,
  ) =>
      _enablePlaylists.call(
        this,
        bValue,
      );

  bool updatePlaybackStatus(
    AudioPlaybackStatus nStatus,
  ) =>
      _updatePlaybackStatus.call(
        this,
        nStatus,
      );

  bool updateShuffled(
    bool bValue,
  ) =>
      _updateShuffled.call(
        this,
        bValue,
      );

  bool updateLooped(
    bool bValue,
  ) =>
      _updateLooped.call(
        this,
        bValue,
      );

  bool updateVolume(
    double flValue,
  ) =>
      _updateVolume.call(
        this,
        flValue,
      );

  bool currentEntryWillChange() => _currentEntryWillChange.call(
        this,
      );

  bool currentEntryIsAvailable(
    bool bAvailable,
  ) =>
      _currentEntryIsAvailable.call(
        this,
        bAvailable,
      );

  bool updateCurrentEntryText(
    Pointer<Utf8> pchText,
  ) =>
      _updateCurrentEntryText.call(
        this,
        pchText,
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
    int nID,
    int nPosition,
    Pointer<Utf8> pchEntryText,
  ) =>
      _setQueueEntry.call(
        this,
        nID,
        nPosition,
        pchEntryText,
      );

  bool setCurrentQueueEntry(
    int nID,
  ) =>
      _setCurrentQueueEntry.call(
        this,
        nID,
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
    int nID,
    int nPosition,
    Pointer<Utf8> pchEntryText,
  ) =>
      _setPlaylistEntry.call(
        this,
        nID,
        nPosition,
        pchEntryText,
      );

  bool setCurrentPlaylistEntry(
    int nID,
  ) =>
      _setCurrentPlaylistEntry.call(
        this,
        nID,
      );

  bool playlistDidChange() => _playlistDidChange.call(
        this,
      );
}
