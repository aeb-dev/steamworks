import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_account_type.dart";
import "../interfaces/steam_app_list.dart";
import "../interfaces/steam_apps.dart";
import "../interfaces/steam_controller.dart";
import "../interfaces/steam_friends.dart";
import "../interfaces/steam_game_search.dart";
import "../interfaces/steam_game_server.dart";
import "../interfaces/steam_game_server_stats.dart";
import "../interfaces/steam_html_surface.dart";
import "../interfaces/steam_http.dart";
import "../interfaces/steam_input.dart";
import "../interfaces/steam_inventory.dart";
import "../interfaces/steam_matchmaking.dart";
import "../interfaces/steam_matchmaking_servers.dart";
import "../interfaces/steam_music.dart";
import "../interfaces/steam_music_remote.dart";
import "../interfaces/steam_networking.dart";
import "../interfaces/steam_parental_settings.dart";
import "../interfaces/steam_parties.dart";
import "../interfaces/steam_remote_play.dart";
import "../interfaces/steam_remote_storage.dart";
import "../interfaces/steam_screenshots.dart";
import "../interfaces/steam_ugc.dart";
import "../interfaces/steam_user.dart";
import "../interfaces/steam_user_stats.dart";
import "../interfaces/steam_utils.dart";
import "../interfaces/steam_video.dart";
import "../steam_api.dart";
import "../structs/steam_ip_address.dart";
import "../typedefs.dart";

class SteamClient extends Opaque {}

final _createSteamPipe = dl.lookupFunction<
    Int Function(
  Pointer<SteamClient>,
),
    HSteamPipe Function(
  Pointer<SteamClient>,
)>("SteamAPI_ISteamClient_CreateSteamPipe");

final _bReleaseSteamPipe = dl.lookupFunction<
    Bool Function(
  Pointer<SteamClient>,
  Int,
),
    bool Function(
  Pointer<SteamClient>,
  HSteamPipe,
)>("SteamAPI_ISteamClient_BReleaseSteamPipe");

final _connectToGlobalUser = dl.lookupFunction<
    Int Function(
  Pointer<SteamClient>,
  Int,
),
    HSteamUser Function(
  Pointer<SteamClient>,
  HSteamPipe,
)>("SteamAPI_ISteamClient_ConnectToGlobalUser");

final _createLocalUser = dl.lookupFunction<
    Int Function(
  Pointer<SteamClient>,
  Pointer<Int32>,
  Int32,
),
    HSteamUser Function(
  Pointer<SteamClient>,
  Pointer<Int32>,
  EAccountType,
)>("SteamAPI_ISteamClient_CreateLocalUser");

final _releaseUser = dl.lookupFunction<
    Void Function(
  Pointer<SteamClient>,
  Int,
  Int,
),
    void Function(
  Pointer<SteamClient>,
  HSteamPipe,
  HSteamUser,
)>("SteamAPI_ISteamClient_ReleaseUser");

final _getISteamUser = dl.lookupFunction<
    Pointer<SteamUser> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamUser> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamUser");

final _getISteamGameServer = dl.lookupFunction<
    Pointer<SteamGameServer> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamGameServer> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamGameServer");

final _setLocalIPBinding = dl.lookupFunction<
    Void Function(
  Pointer<SteamClient>,
  Pointer<SteamIpAddress>,
  UnsignedShort,
),
    void Function(
  Pointer<SteamClient>,
  Pointer<SteamIpAddress>,
  int,
)>("SteamAPI_ISteamClient_SetLocalIPBinding");

final _getISteamFriends = dl.lookupFunction<
    Pointer<SteamFriends> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamFriends> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamFriends");

final _getISteamUtils = dl.lookupFunction<
    Pointer<SteamUtils> Function(
  Pointer<SteamClient>,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamUtils> Function(
  Pointer<SteamClient>,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamUtils");

final _getISteamMatchmaking = dl.lookupFunction<
    Pointer<SteamMatchmaking> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamMatchmaking> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamMatchmaking");

final _getISteamMatchmakingServers = dl.lookupFunction<
    Pointer<SteamMatchmakingServers> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamMatchmakingServers> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamMatchmakingServers");

final _getISteamGenericInterface = dl.lookupFunction<
    Pointer<Void> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<Void> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamGenericInterface");

final _getISteamUserStats = dl.lookupFunction<
    Pointer<SteamUserStats> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamUserStats> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamUserStats");

final _getISteamGameServerStats = dl.lookupFunction<
    Pointer<SteamGameServerStats> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamGameServerStats> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamGameServerStats");

final _getISteamApps = dl.lookupFunction<
    Pointer<SteamApps> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamApps> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamApps");

final _getISteamNetworking = dl.lookupFunction<
    Pointer<SteamNetworking> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamNetworking> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamNetworking");

final _getISteamRemoteStorage = dl.lookupFunction<
    Pointer<SteamRemoteStorage> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamRemoteStorage> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamRemoteStorage");

final _getISteamScreenshots = dl.lookupFunction<
    Pointer<SteamScreenshots> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamScreenshots> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamScreenshots");

final _getISteamGameSearch = dl.lookupFunction<
    Pointer<SteamGameSearch> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamGameSearch> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamGameSearch");

final _getIPCCallCount = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamClient>,
),
    int Function(
  Pointer<SteamClient>,
)>("SteamAPI_ISteamClient_GetIPCCallCount");

final _bShutdownIfAllPipesClosed = dl.lookupFunction<
    Bool Function(
  Pointer<SteamClient>,
),
    bool Function(
  Pointer<SteamClient>,
)>("SteamAPI_ISteamClient_BShutdownIfAllPipesClosed");

final _getISteamHTTP = dl.lookupFunction<
    Pointer<SteamHttp> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamHttp> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamHTTP");

final _getISteamController = dl.lookupFunction<
    Pointer<SteamController> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamController> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamController");

final _getISteamUGC = dl.lookupFunction<
    Pointer<SteamUgc> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamUgc> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamUGC");

final _getISteamAppList = dl.lookupFunction<
    Pointer<SteamAppList> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamAppList> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamAppList");

final _getISteamMusic = dl.lookupFunction<
    Pointer<SteamMusic> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamMusic> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamMusic");

final _getISteamMusicRemote = dl.lookupFunction<
    Pointer<SteamMusicRemote> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamMusicRemote> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamMusicRemote");

final _getISteamHTMLSurface = dl.lookupFunction<
    Pointer<SteamHtmlSurface> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamHtmlSurface> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamHTMLSurface");

final _getISteamInventory = dl.lookupFunction<
    Pointer<SteamInventory> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamInventory> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamInventory");

final _getISteamVideo = dl.lookupFunction<
    Pointer<SteamVideo> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamVideo> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamVideo");

final _getISteamParentalSettings = dl.lookupFunction<
    Pointer<SteamParentalSettings> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamParentalSettings> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamParentalSettings");

final _getISteamInput = dl.lookupFunction<
    Pointer<SteamInput> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamInput> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamInput");

final _getISteamParties = dl.lookupFunction<
    Pointer<SteamParties> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamParties> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamParties");

final _getISteamRemotePlay = dl.lookupFunction<
    Pointer<SteamRemotePlay> Function(
  Pointer<SteamClient>,
  Int,
  Int,
  Pointer<Utf8>,
),
    Pointer<SteamRemotePlay> Function(
  Pointer<SteamClient>,
  HSteamUser,
  HSteamPipe,
  Pointer<Utf8>,
)>("SteamAPI_ISteamClient_GetISteamRemotePlay");

extension SteamClientExtensions on Pointer<SteamClient> {
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
    EAccountType eAccountType,
  ) =>
      _createLocalUser.call(
        this,
        phSteamPipe,
        eAccountType,
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

  Pointer<SteamUser> getISteamUser(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamUser.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamGameServer> getISteamGameServer(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamGameServer.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  void setLocalIPBinding(
    Pointer<SteamIpAddress> unIP,
    int usPort,
  ) =>
      _setLocalIPBinding.call(
        this,
        unIP,
        usPort,
      );

  Pointer<SteamFriends> getISteamFriends(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamFriends.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamUtils> getISteamUtils(
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamUtils.call(
        this,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamMatchmaking> getISteamMatchmaking(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamMatchmaking.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamMatchmakingServers> getISteamMatchmakingServers(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamMatchmakingServers.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<Void> getISteamGenericInterface(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamGenericInterface.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamUserStats> getISteamUserStats(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamUserStats.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamGameServerStats> getISteamGameServerStats(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamGameServerStats.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamApps> getISteamApps(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamApps.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamNetworking> getISteamNetworking(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamNetworking.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamRemoteStorage> getISteamRemoteStorage(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamRemoteStorage.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamScreenshots> getISteamScreenshots(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamScreenshots.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamGameSearch> getISteamGameSearch(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamGameSearch.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  int getIPCCallCount() => _getIPCCallCount.call(
        this,
      );

  bool bShutdownIfAllPipesClosed() => _bShutdownIfAllPipesClosed.call(
        this,
      );

  Pointer<SteamHttp> getISteamHTTP(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamHTTP.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamController> getISteamController(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamController.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamUgc> getISteamUGC(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamUGC.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamAppList> getISteamAppList(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamAppList.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamMusic> getISteamMusic(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamMusic.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamMusicRemote> getISteamMusicRemote(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamMusicRemote.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamHtmlSurface> getISteamHTMLSurface(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamHTMLSurface.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamInventory> getISteamInventory(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamInventory.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamVideo> getISteamVideo(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamVideo.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamParentalSettings> getISteamParentalSettings(
    HSteamUser hSteamuser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamParentalSettings.call(
        this,
        hSteamuser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamInput> getISteamInput(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamInput.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamParties> getISteamParties(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamParties.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );

  Pointer<SteamRemotePlay> getISteamRemotePlay(
    HSteamUser hSteamUser,
    HSteamPipe hSteamPipe,
    Pointer<Utf8> pchVersion,
  ) =>
      _getISteamRemotePlay.call(
        this,
        hSteamUser,
        hSteamPipe,
        pchVersion,
      );
}
