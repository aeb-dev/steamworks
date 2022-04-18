import "dart:async";

import "call_result.dart";
import "callback.dart";
import "dispatcher.dart";
import "generated/generated.dart";

/// Base class for [SteamClient] and [SteamServer]
abstract class SteamBase {
  /// Steam pipe value to be used across steam calls
  final HSteamPipe pipe;

  /// Base constructor for [SteamClient] and [SteamServer]
  SteamBase({
    required this.pipe,
  }) {
    Dispatcher.init(
      pipe: pipe,
    );
  }

  /// Dispatcher instance
  Dispatcher get _dispatcher => Dispatcher.instance;

  /// Register the [CallResult] to the [Dispatcher]
  void registerCallResult(CallResult callResult) {
    _dispatcher.registerCallResult(callResult);
  }

  /// Unregister the [CallResult] from the [Dispatcher]
  void unregisterCallResult(CallResult callResult) {
    _dispatcher.unregisterCallResult(callResult);
  }

  /// Register the [Callback] to the [Dispatcher]
  void registerCallback(Callback callback) {
    _dispatcher.registerCallback(callback);
  }

  /// Unregister the [Callback] from the [Dispatcher]
  void unregisterCallback(Callback callback) {
    _dispatcher.unregisterCallback(callback);
  }

  /// Runs frames in order to receive callbacks
  void runFrame() async {
    unawaited(_dispatcher.runFrame());
  }
}
