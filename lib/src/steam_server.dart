import "dart:io";

import "package:ffi/ffi.dart";

import "dispatcher.dart";
import "generated/global_interfaces/steam_game_server.dart";

class SteamServer {
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

    SteamGameServer.init(
      ipAsInt,
      steamPort,
      gamePort,
      queryPort,
      serverMode,
      versionString.toNativeUtf8(),
    );

    Dispatcher.init();
  }

  static void runFrames() {
    Dispatcher.runFrame();
  }
}
