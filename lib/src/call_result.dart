import "dart:ffi";

import "dispatcher.dart";
import "generated/generated.dart";

/// Use this class to register a callback
/// for an async request
class CallResult<T extends NativeType> {
  /// async call id of the request
  late final SteamApiCall asyncCallId;

  /// callback id of the call result type [T]
  late final int callbackId;

  /// callback function to be called after the request is completed
  late final void Function(Pointer<T> data, bool hasFailed) cb;

  /// Creates a [CallResult] with given parameters to be called
  /// after the request is completed. Do not forget to register
  /// in order to receive the result
  CallResult({
    required this.asyncCallId,
    required this.cb,
  }) {
    callbackId = callbackIdMapByType[T]!;
  }

  /// When the request finishes [Dispatcher] calls this function
  /// to call your passed [cb]
  void onCb({
    required Pointer<Void> data,
    required bool hasFailed,
  }) {
    Pointer<T> dataAsT = data.cast<T>();
    cb(
      dataAsT,
      hasFailed,
    );
  }
}
