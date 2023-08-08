// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class RemoteStorageFileReadAsyncComplete extends Struct {
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
