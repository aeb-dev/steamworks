import "dart:ffi";
import "dart:io";

import "package:ffi/ffi.dart";

import "generated/generated.dart";
import "steam_base.dart";

/// A wrapper for the [SteamGameServer] to easily manage
/// game server instance
class SteamServer extends SteamBase {
  static late SteamServer? _instance;

  /// Initalized instance of the [SteamServer]
  /// Do not access this before calling [init]
  static SteamServer get instance => _instance!;

  /// Initalizes the [SteamServer]. Calling [init]
  /// multiple time is noop
  static void init({
    required String ip,
    int steamPort = 0,
    int gamePort = 27015,
    int queryPort = 27016,
    EServerMode serverMode = EServerMode.authenticationAndSecure,
    String versionString = "1.0.0.0",
  }) {
    if (_instance != null) {
      return;
    }

    int ipAsInt = int.parse(
      InternetAddress(
        ip,
        type: InternetAddressType.IPv4,
      ).rawAddress.map((e) => e.toRadixString(16).padRight(2, "0")).join(),
    );

    bool isInitialized = SteamGameServer.init(
      ipAsInt,
      steamPort,
      gamePort,
      queryPort,
      serverMode,
      versionString.toNativeUtf8(),
    );

    if (!isInitialized) {
      throw "Steam server failed to initialize";
    }

    _instance = SteamServer._(
      ip: ip,
      steamPort: steamPort,
      gamePort: gamePort,
      queryPort: queryPort,
      serverMode: serverMode,
      versionString: versionString,
    );
  }

  /// Accesses server instance of [ISteamUtils]
  Pointer<ISteamUtils> get steamUtils => ISteamUtils.serverInstance;

  /// Accesses server instance of [ISteamHttp]
  Pointer<ISteamHttp> get steamHttp => ISteamHttp.serverInstance;

  /// Accesses server instance of [ISteamUgc]
  Pointer<ISteamUgc> get steamUgc => ISteamUgc.serverInstance;

  /// Accesses server instance of [ISteamInventory]
  Pointer<ISteamInventory> get steamInventory => ISteamInventory.serverInstance;

  /// Accesses server instance of [ISteamNetworkingMessages]
  Pointer<ISteamNetworkingMessages> get steamNetworkingMessages =>
      ISteamNetworkingMessages.serverInstance;

  /// Accesses server instance of [ISteamNetworkingSockets]
  Pointer<ISteamNetworkingSockets> get steamNetworkingSockets =>
      ISteamNetworkingSockets.serverInstance;

  /// Accesses server instance of [ISteamNetworkingUtils]
  Pointer<ISteamNetworkingUtils> get steamNetworkingUtils =>
      ISteamNetworkingUtils.globalInstance;

  /// Accesses server instance of [ISteamGameServer]
  Pointer<ISteamGameServer> get steamGameServer =>
      ISteamGameServer.serverInstance;

  /// Accesses server instance of [ISteamGameServerStats]
  Pointer<ISteamGameServerStats> get steamGameServerStats =>
      ISteamGameServerStats.serverInstance;

  /// The IP address you are going to bind to.
  /// (This should be in host order, i.e 127.0.0.1 == 0x7f000001).
  /// You can use INADDR_ANY to bind to all local IPv4 addresses
  final String ip;

  /// The local port used to communicate with the steam servers
  final int steamPort;

  /// The port that clients will connect to for gameplay
  final int gamePort;

  /// The port that will manage server browser
  /// related duties and info pings from clients
  final int queryPort;

  /// Sets the authentication method of the server
  final EServerMode serverMode;

  /// The version string is usually in the form x.x.x.x, and is used
  /// by the master server to detect when the server is out of date.
  /// (Only servers with the latest version will be listed.)
  final String versionString;

  SteamServer._({
    required this.ip,
    this.steamPort = 0,
    this.gamePort = 27015,
    this.queryPort = 27016,
    this.serverMode = EServerMode.authenticationAndSecure,
    this.versionString = "1.0.0.0",
  }) : super(
          pipe: SteamGameServer.getHSteamPipe(),
        );
}
