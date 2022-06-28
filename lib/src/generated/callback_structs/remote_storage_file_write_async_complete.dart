// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class RemoteStorageFileWriteAsyncComplete extends Struct {
  static int get callbackId => 1331;

  @Int32()
  external EResultAliasDart result;
}

extension RemoteStorageFileWriteAsyncCompleteExtensions
    on Pointer<RemoteStorageFileWriteAsyncComplete> {
  EResult get result => EResult.fromValue(ref.result);
}
