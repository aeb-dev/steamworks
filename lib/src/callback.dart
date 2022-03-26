import "dart:ffi";

import "package:ffi/ffi.dart";

import "dispatcher.dart";
import "generated/callback_id_map.dart";

class Callback<T extends NativeType> {
  late final int id;
  late final void Function(Pointer<T> data) cb;

  Callback({
    required this.cb,
  }) {
    id = callbackIdMapByType[T]!;
  }

  void register() {
    Dispatcher.registerCallback(this);
  }

  void unregister() {
    Dispatcher.unregisterCallback(this);
  }

  void onCb({
    required Pointer<UnsignedChar> data,
  }) {
    Pointer<T> dataAsT = data.cast<T>();
    cb(
      dataAsT,
    );
  }
}
