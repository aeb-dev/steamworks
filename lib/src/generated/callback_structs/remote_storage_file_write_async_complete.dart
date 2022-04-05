// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class RemoteStorageFileWriteAsyncComplete extends Struct {
  static int get callbackId => 1331;

  @Int32()
  external EResult result;
}

extension RemoteStorageFileWriteAsyncCompleteExtensions
    on Pointer<RemoteStorageFileWriteAsyncComplete> {
  EResult get result => ref.result;
}
