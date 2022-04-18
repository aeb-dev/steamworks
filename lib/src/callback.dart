import "dart:ffi";

import "package:ffi/ffi.dart";

import "dispatcher.dart";
import "generated/generated.dart";

/// Use this class to register a callback for
/// a specific callback
class Callback<T extends NativeType> {
  /// callback id of the type [T]
  late final int id;

  /// callback function to be called after the [T] event occured
  late final void Function(Pointer<T> data) cb;

  /// Creates a [Callback] with given parameters to be called
  /// after the event for [T] has happened. Do not forget to
  /// register in order to receive the result
  Callback({
    required this.cb,
  }) {
    id = callbackIdMapByType[T]!;
  }

  /// When the event occurs, [Dispatcher] calls this function
  /// to call your passed [cb]
  void onCb({
    required Pointer<UnsignedChar> data,
  }) {
    Pointer<T> dataAsT = data.cast<T>();
    cb(
      dataAsT,
    );
  }
}
