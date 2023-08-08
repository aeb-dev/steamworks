// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class RequestPlayersForGameFinalResultCallback extends Struct {
  static int get callbackId => 5213;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int searchId;

  @UnsignedLongLong()
  external int uniqueGameId;
}

extension RequestPlayersForGameFinalResultCallbackExtensions
    on Pointer<RequestPlayersForGameFinalResultCallback> {
  EResult get result => EResult.fromValue(ref.result);

  int get searchId => ref.searchId;

  int get uniqueGameId => ref.uniqueGameId;
}
