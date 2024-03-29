import "dart:ffi";

import "package:ffi/ffi.dart";

import "generated/generated.dart";
import "steam_base.dart";
import "steam_initialization_error.dart";
import "steam_restart_app_if_necessary_error.dart";

/// A wrapper for the [SteamApi] to easily manage
/// game instance
class SteamClient extends SteamBase {
  static SteamClient? _instance;

  /// Initalized instance of the [SteamClient]
  /// Do not access this before calling [init]
  static SteamClient get instance => _instance!;

  /// Initalizes the [SteamClient]. Calling [init]
  /// multiple time is noop
  static void init({
    AppId? appId,
  }) {
    if (_instance != null) {
      return;
    }

    if (appId != null) {
      // https://partner.steamgames.com/doc/api/steam_api#SteamAPI_RestartAppIfNecessary
      bool isRestartNeeded = SteamApi.restartAppIfNecessary(appId);
      if (isRestartNeeded) {
        // instead of exiting here, we are letting application to
        // have time to execute other things before exiting
        throw SteamRestartAppIfNecessaryError();
      }
    }

    Pointer<Utf8> errMsg =
        calloc<Char>(SteamConstants.maxSteamErrMsg).cast<Utf8>();
    try {
      ESteamApiInitResult result = SteamApi.initFlat(errMsg);
      if (result != ESteamApiInitResult.ok) {
        String v = errMsg.toDartString();
        throw SteamInitializationError(message: v);
      }
    } finally {
      calloc.free(errMsg);
    }

    _instance = SteamClient._();
  }

  /// Accesses user instance of [ISteamUser]
  Pointer<ISteamUser> get steamUser => ISteamUser.userInstance;

  /// Accesses user instance of [ISteamFriends]
  Pointer<ISteamFriends> get steamFriends => ISteamFriends.userInstance;

  /// Accesses user instance of [ISteamUtils]
  Pointer<ISteamUtils> get steamUtils => ISteamUtils.userInstance;

  /// Accesses user instance of [ISteamMatchmaking]
  Pointer<ISteamMatchmaking> get steamMatchmaking =>
      ISteamMatchmaking.userInstance;

  /// Accesses user instance of [ISteamMatchmakingServers]
  Pointer<ISteamMatchmakingServers> get steamMatchmakingServers =>
      ISteamMatchmakingServers.userInstance;

  /// Accesses user instance of [ISteamGameSearch]
  Pointer<ISteamGameSearch> get steamGameSearch =>
      ISteamGameSearch.userInstance;

  /// Accesses user instance of [ISteamParties]
  Pointer<ISteamParties> get steamParties => ISteamParties.userInstance;

  /// Accesses user instance of [ISteamRemoteStorage]
  Pointer<ISteamRemoteStorage> get steamRemoteStorage =>
      ISteamRemoteStorage.userInstance;

  /// Accesses user instance of [ISteamUserStats]
  Pointer<ISteamUserStats> get steamUserStats => ISteamUserStats.userInstance;

  /// Accesses user instance of [ISteamApps]
  Pointer<ISteamApps> get steamApps => ISteamApps.userInstance;

  /// Accesses user instance of [ISteamNetworking]
  Pointer<ISteamNetworking> get steamNetworking =>
      ISteamNetworking.userInstance;

  /// Accesses user instance of [ISteamScreenshots]
  Pointer<ISteamScreenshots> get steamScreenshots =>
      ISteamScreenshots.userInstance;

  /// Accesses user instance of [ISteamMusic]
  Pointer<ISteamMusic> get steamMusic => ISteamMusic.userInstance;

  /// Accesses user instance of [ISteamMusicRemote]
  Pointer<ISteamMusicRemote> get steamMusicRemote =>
      ISteamMusicRemote.userInstance;

  /// Accesses user instance of [ISteamHttp]
  Pointer<ISteamHttp> get steamHttp => ISteamHttp.userInstance;

  /// Accesses user instance of [ISteamInput]
  Pointer<ISteamInput> get steamInput => ISteamInput.userInstance;

  /// Accesses user instance of [ISteamUgc]
  Pointer<ISteamUgc> get steamUgc => ISteamUgc.userInstance;

  /// Accesses user instance of [ISteamHtmlSurface]
  Pointer<ISteamHtmlSurface> get steamHtmlSurface =>
      ISteamHtmlSurface.userInstance;

  /// Accesses user instance of [ISteamInventory]
  Pointer<ISteamInventory> get steamInventory => ISteamInventory.userInstance;

  /// Accesses user instance of [ISteamParentalSettings]
  Pointer<ISteamParentalSettings> get steamParentalSettings =>
      ISteamParentalSettings.userInstance;

  /// Accesses user instance of [ISteamRemotePlay]
  Pointer<ISteamRemotePlay> get steamRemotePlay =>
      ISteamRemotePlay.userInstance;

  /// Accesses user instance of [ISteamNetworkingMessages]
  Pointer<ISteamNetworkingMessages> get steamNetworkingMessages =>
      ISteamNetworkingMessages.userInstance;

  /// Accesses user instance of [ISteamNetworkingSockets]
  Pointer<ISteamNetworkingSockets> get steamNetworkingSockets =>
      ISteamNetworkingSockets.userInstance;

  /// Accesses user instance of [ISteamNetworkingUtils]
  Pointer<ISteamNetworkingUtils> get steamNetworkingUtils =>
      ISteamNetworkingUtils.globalInstance;

  SteamClient._()
      : super(
          pipe: SteamApi.getHSteamPipe(),
        );
}
