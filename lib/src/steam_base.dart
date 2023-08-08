// ignore_for_file: comment_references

import "dart:async";
import "dart:ffi";

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

  /// Register the [Callback] to the [Dispatcher]
  Callback<T> registerCallback<T extends NativeType>({
    required void Function(Pointer<T> data) cb,
  }) =>
      _dispatcher.registerCallback<T>(
        cb: cb,
      );

  /// Register the [CallResult] to the [Dispatcher]
  CallResult<T> registerCallResult<T extends NativeType>({
    required SteamApiCall asyncCallId,
    required void Function(Pointer<T> data, bool hasFailed) cb,
  }) =>
      _dispatcher.registerCallResult(
        asyncCallId: asyncCallId,
        cb: cb,
      );

  /// Unregister the [Callback] from the [Dispatcher]
  void unregisterCallback({
    required Callback callback,
  }) =>
      _dispatcher.unregisterCallback(
        callback: callback,
      );

  /// Unregister the [CallResult] from the [Dispatcher]
  void unregisterCallResult({
    required CallResult callResult,
  }) =>
      _dispatcher.unregisterCallResult(
        callResult: callResult,
      );

  /// Runs frames in order to receive callbacks
  void runFrame() async {
    unawaited(_dispatcher.runFrame());
  }
}
