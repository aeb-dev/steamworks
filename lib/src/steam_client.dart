import "dispatcher.dart";
import "generated/initializers/steam_api.dart";
import "generated/typedefs.dart";

class SteamClient {
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

  static void runFrame() {
    Dispatcher.runFrame();
  }
}
