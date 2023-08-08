// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class SubmitPlayerResultResultCallback extends Struct {
  static int get callbackId => 5214;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int uniqueGameId;

  @UnsignedLongLong()
  external CSteamId steamIdPlayer;
}

extension SubmitPlayerResultResultCallbackExtensions
    on Pointer<SubmitPlayerResultResultCallback> {
  EResult get result => EResult.fromValue(ref.result);

  int get uniqueGameId => ref.uniqueGameId;

  CSteamId get steamIdPlayer => ref.steamIdPlayer;
}
