import "dispatcher.dart";
import "generated/global_interfaces/steam_api.dart";

class SteamClient {
  static void init() {
    bool r = SteamApi.init();

    Dispatcher.init();
  }

  static void runFrames() {
    Dispatcher.runFrame();
  }
}
