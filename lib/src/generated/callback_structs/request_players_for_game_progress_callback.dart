// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class RequestPlayersForGameProgressCallback extends Struct {
  static int get callbackId => 5211;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int searchId;
}

extension RequestPlayersForGameProgressCallbackExtensions
    on Pointer<RequestPlayersForGameProgressCallback> {
  EResult get result => EResult.fromValue(ref.result);

  int get searchId => ref.searchId;
}
