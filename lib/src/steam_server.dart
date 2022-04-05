import "dart:io";

import "package:ffi/ffi.dart";

import "dispatcher.dart";
import "generated/initializers/steam_game_server.dart";
import "generated/typedefs.dart";

/// A wrapper for the [SteamGameServer] to easily manage
/// game server instance
class SteamServer {
  /// Initializes [SteamServer]
  static void init({
    required String ip,
    int steamPort = 0,
    int gamePort = 27015,
    int queryPort = 27016,
    int serverMode = 3,
    String versionString = "1.0.0.0",
  }) {
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

    HSteamPipe pipe = SteamGameServer.getHSteamPipe();
    Dispatcher.init(
      pipe: pipe,
    );
  }

  /// Runs frames in order to receive callbacks
  static void runFrame() {
    Dispatcher.runFrame();
  }
}
