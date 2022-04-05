import "dispatcher.dart";
import "generated/initializers/steam_api.dart";
import "generated/typedefs.dart";

/// A wrapper for the [SteamApi] to easily manage
/// game instance
class SteamClient {
  /// Initializes [SteamClient]
  static void init() {
    bool isInitialized = SteamApi.init();
    if (!isInitialized) {
      throw "Steam failed to initialize";
    }

    HSteamPipe pipe = SteamApi.getHSteamPipe();
    Dispatcher.init(
      pipe: pipe,
    );
  }

  /// Runs frames in order to receive callbacks
  static void runFrame() {
    Dispatcher.runFrame();
  }
}
