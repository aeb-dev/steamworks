// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageFileReadAsyncComplete extends Struct {
  static int get callbackId => 1332;

  @UnsignedLongLong()
  external SteamApiCall fileReadAsync;

  @Int32()
  external EResultAliasDart result;

  @UnsignedInt()
  external int offset;

  @UnsignedInt()
  external int read;
}

extension RemoteStorageFileReadAsyncCompleteExtensions
    on Pointer<RemoteStorageFileReadAsyncComplete> {
  SteamApiCall get fileReadAsync => ref.fileReadAsync;

  EResult get result => EResult.fromValue(ref.result);

  int get offset => ref.offset;

  int get read => ref.read;
}
