// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageFileReadAsyncComplete extends Struct {
  static int get callbackId => 1332;

  @UnsignedLongLong()
  external SteamApiCall fileReadAsync;

  @Int32()
  external EResult result;

  @UnsignedInt()
  external int offset;

  @UnsignedInt()
  external int read;
}

extension RemoteStorageFileReadAsyncCompleteExtensions
    on Pointer<RemoteStorageFileReadAsyncComplete> {
  SteamApiCall get fileReadAsync => ref.fileReadAsync;

  EResult get result => ref.result;

  int get offset => ref.offset;

  int get read => ref.read;
}
