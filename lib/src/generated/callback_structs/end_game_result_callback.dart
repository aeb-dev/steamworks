// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class EndGameResultCallback extends Struct {
  static int get callbackId => 5215;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int uniqueGameId;
}

extension EndGameResultCallbackExtensions on Pointer<EndGameResultCallback> {
  EResult get result => EResult.fromValue(ref.result);

  int get uniqueGameId => ref.uniqueGameId;
}
