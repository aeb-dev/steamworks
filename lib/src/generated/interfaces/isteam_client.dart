// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/eaccount_type.dart";
import "../interfaces/isteam_app_list.dart";
import "../interfaces/isteam_apps.dart";
import "../interfaces/isteam_friends.dart";
import "../interfaces/isteam_game_search.dart";
import "../interfaces/isteam_game_server.dart";
import "../interfaces/isteam_game_server_stats.dart";
import "../interfaces/isteam_html_surface.dart";
import "../interfaces/isteam_http.dart";
import "../interfaces/isteam_input.dart";
import "../interfaces/isteam_inventory.dart";
import "../interfaces/isteam_matchmaking.dart";
import "../interfaces/isteam_matchmaking_servers.dart";
import "../interfaces/isteam_music.dart";
import "../interfaces/isteam_music_remote.dart";
import "../interfaces/isteam_networking.dart";
import "../interfaces/isteam_parental_settings.dart";
import "../interfaces/isteam_parties.dart";
import "../interfaces/isteam_remote_play.dart";
import "../interfaces/isteam_remote_storage.dart";
import "../interfaces/isteam_screenshots.dart";
import "../interfaces/isteam_ugc.dart";
import "../interfaces/isteam_user.dart";
import "../interfaces/isteam_user_stats.dart";
import "../interfaces/isteam_utils.dart";
import "../interfaces/isteam_video.dart";
import "../structs/steam_ip_address.dart";
import "../typedefs.dart";

class ISteamClient extends Opaque {}

final _createSteamPipe = dl.lookupFunction<
    Int Function(
  Pointer<ISteamClient>,
),
    HSteamPipe Function(
  Pointer<ISteamClient>,
)>("SteamAPI_ISteamClient_CreateSteamPipe");

final _bReleaseSteamPipe = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamClient>,
  Int,
),
    bool Function(
  Pointer<ISteamClient>,
  HSteamPipe,
)>("SteamAPI_ISteamClient_BReleaseSteamPipe");

final _connectToGlobalUser = dl.lookupFunction<
    Int Function(
  Pointer<ISteamClient>,
  Int,
),
    HSteamUser Function(
  Pointer<ISteamClient>,
  HSteamPipe,
)>("SteamAPI_ISteamClient_ConnectToGlobalUser");

final _createLocalUser = dl.lookupFunction<
    Int Function(
  Pointer<ISteamClient>,
  Pointer<Int32>,
  Int32,
),
    HSteamUser Function(
  Pointer<ISteamClient>,
  Pointer<Int32>,
  EAccountType,
)>("SteamAPI_ISteamClient_CreateLocalUser");

final _releaseUser = dl.lookupFunction<
    Void Function(
  Pointer<ISteamClient>,
  Int,
  Int,
),
    void Function(
  Pointer<ISteamClient>,
  HSteamPipe,
  HSteamUser,
)>("SteamAPI_ISteamClient_ReleaseUser");

final _getISteamUser = dl.lookupFunction<
    Pointer<ISteamUser> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamUser> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamUser");

final _getISteamGameServer = dl.lookupFunction<
    Pointer<ISteamGameServer> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamGameServer> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamGameServer");

final _setLocalIpBinding = dl.lookupFunction<
    Void Function(
  Pointer<ISteamClient>,
  Pointer<SteamIpAddress>,
  UnsignedShort,
),
    void Function(
  Pointer<ISteamClient>,
  Pointer<SteamIpAddress>,
  int,
)>("SteamAPI_ISteamClient_SetLocalIPBinding");

final _getISteamFriends = dl.lookupFunction<
    Pointer<ISteamFriends> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamFriends> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamFriends");

final _getISteamUtils = dl.lookupFunction<
    Pointer<ISteamUtils> Function(
  Pointer<ISteamClient>,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamUtils> Function(
  Pointer<ISteamClient>,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamUtils");

final _getISteamMatchmaking = dl.lookupFunction<
    Pointer<ISteamMatchmaking> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamMatchmaking> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamMatchmaking");

final _getISteamMatchmakingServers = dl.lookupFunction<
    Pointer<ISteamMatchmakingServers> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamMatchmakingServers> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamMatchmakingServers");

final _getISteamGenericInterface = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<Void> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamGenericInterface");

final _getISteamUserStats = dl.lookupFunction<
    Pointer<ISteamUserStats> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamUserStats> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamUserStats");

final _getISteamGameServerStats = dl.lookupFunction<
    Pointer<ISteamGameServerStats> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamGameServerStats> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamGameServerStats");

final _getISteamApps = dl.lookupFunction<
    Pointer<ISteamApps> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamApps> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamApps");

final _getISteamNetworking = dl.lookupFunction<
    Pointer<ISteamNetworking> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamNetworking> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamNetworking");

final _getISteamRemoteStorage = dl.lookupFunction<
    Pointer<ISteamRemoteStorage> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamRemoteStorage> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamRemoteStorage");

final _getISteamScreenshots = dl.lookupFunction<
    Pointer<ISteamScreenshots> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamScreenshots> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamScreenshots");

final _getISteamGameSearch = dl.lookupFunction<
    Pointer<ISteamGameSearch> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamGameSearch> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamGameSearch");

final _getIpcCallCount = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamClient>,
),
    int Function(
  Pointer<ISteamClient>,
)>("SteamAPI_ISteamClient_GetIPCCallCount");

final _bShutdownIfAllPipesClosed = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamClient>,
),
    bool Function(
  Pointer<ISteamClient>,
)>("SteamAPI_ISteamClient_BShutdownIfAllPipesClosed");

final _getISteamHttp = dl.lookupFunction<
    Pointer<ISteamHttp> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamHttp> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamHTTP");

final _getISteamUgc = dl.lookupFunction<
    Pointer<ISteamUgc> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamUgc> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamUGC");

final _getISteamAppList = dl.lookupFunction<
    Pointer<ISteamAppList> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamAppList> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamAppList");

final _getISteamMusic = dl.lookupFunction<
    Pointer<ISteamMusic> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamMusic> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamMusic");

final _getISteamMusicRemote = dl.lookupFunction<
    Pointer<ISteamMusicRemote> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamMusicRemote> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamMusicRemote");

final _getISteamHtmlSurface = dl.lookupFunction<
    Pointer<ISteamHtmlSurface> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamHtmlSurface> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamHTMLSurface");

final _getISteamInventory = dl.lookupFunction<
    Pointer<ISteamInventory> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamInventory> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamInventory");

final _getISteamVideo = dl.lookupFunction<
    Pointer<ISteamVideo> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamVideo> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamVideo");

final _getISteamParentalSettings = dl.lookupFunction<
    Pointer<ISteamParentalSettings> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamParentalSettings> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamParentalSettings");

final _getISteamInput = dl.lookupFunction<
    Pointer<ISteamInput> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamInput> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamInput");

final _getISteamParties = dl.lookupFunction<
    Pointer<ISteamParties> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamParties> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamParties");

final _getISteamRemotePlay = dl.lookupFunction<
    Pointer<ISteamRemotePlay> Function(
  Pointer<ISteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<ISteamRemotePlay> Function(
  Pointer<ISteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamRemotePlay");

extension ISteamClientExtensions on Pointer<ISteamClient> {
  HSteamPipe createSteamPipe() => _createSteamPipe.call(
        this,
      );

  bool bReleaseSteamPipe(
    HSteamPipe hSteamPipe,
  ) =>
      _bReleaseSteamPipe.call(
        this,
        hSteamPipe,
      );

  HSteamUser connectToGlobalUser(
    HSteamPipe hSteamPipe,
  ) =>
      _connectToGlobalUser.call(
        this,
        hSteamPipe,
      );

  HSteamUser createLocalUser(
    Pointer<Int32> phSteamPipe,
    EAccountType accountType,
  ) =>
      _createLocalUser.call(
        this,
        phSteamPipe,
        accountType,
      );

  void releaseUser(
    HSteamPipe hSteamPipe,
    HSteamUser hUser,
  ) =>
      _releaseUser.call(
        this,
        hSteamPipe,
        hUser,
      );

  Pointer<ISteamUser> getISteamUser(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamUser.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamGameServer> getISteamGameServer(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamGameServer.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  void setLocalIpBinding(
    Pointer<SteamIpAddress> ip,
    int port,
  ) =>
      _setLocalIpBinding.call(
        this,
        ip,
        port,
      );

  Pointer<ISteamFriends> getISteamFriends(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamFriends.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamUtils> getISteamUtils(
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamUtils.call(
        this,
        hSteamPipe,
        version,
      );

  Pointer<ISteamMatchmaking> getISteamMatchmaking(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamMatchmaking.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamMatchmakingServers> getISteamMatchmakingServers(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamMatchmakingServers.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<Void> getISteamGenericInterface(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamGenericInterface.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamUserStats> getISteamUserStats(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamUserStats.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamGameServerStats> getISteamGameServerStats(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamGameServerStats.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamApps> getISteamApps(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamApps.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamNetworking> getISteamNetworking(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamNetworking.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamRemoteStorage> getISteamRemoteStorage(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamRemoteStorage.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamScreenshots> getISteamScreenshots(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamScreenshots.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamGameSearch> getISteamGameSearch(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamGameSearch.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  int getIpcCallCount() => _getIpcCallCount.call(
        this,
      );

  bool bShutdownIfAllPipesClosed() => _bShutdownIfAllPipesClosed.call(
        this,
      );

  Pointer<ISteamHttp> getISteamHttp(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamHttp.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamUgc> getISteamUgc(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamUgc.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamAppList> getISteamAppList(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamAppList.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamMusic> getISteamMusic(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamMusic.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamMusicRemote> getISteamMusicRemote(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamMusicRemote.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamHtmlSurface> getISteamHtmlSurface(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamHtmlSurface.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamInventory> getISteamInventory(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamInventory.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamVideo> getISteamVideo(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamVideo.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamParentalSettings> getISteamParentalSettings(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamParentalSettings.call(
        this,
        hSteamuser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamInput> getISteamInput(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamInput.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamParties> getISteamParties(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamParties.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );

  Pointer<ISteamRemotePlay> getISteamRemotePlay(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> version,
  ) =>
      _getISteamRemotePlay.call(
        this,
        hSteamUser,
        hSteamPipe,
        version,
      );
}
