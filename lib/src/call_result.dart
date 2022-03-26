import "dart:ffi";

import "dispatcher.dart";
import "generated/callback_id_map.dart";
import "generated/typedefs.dart";

class CallResult<T extends NativeType> {
  late final SteamApiCall callId;
  late final int callbackId;
  late final void Function(Pointer<T> data, bool hasFailed) cb;

  CallResult({
    required this.callId,
    required this.cb,
  }) {
    callbackId = callbackIdMapByType[T]!;
  }

  void register() {
    Dispatcher.registerCallResult(this);
  }

  void unregister() {
    Dispatcher.unregisterCallResult(this);
  }

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
