// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class RemoteStorageDownloadUgcResult extends Struct {
  static int get callbackId => 1317;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external UgcHandle file;

  @UnsignedInt()
  external AppId appId;

  @Int()
  external int sizeInBytes;

  @Array<Char>(260)
  external Array<Char> fileName;

  @UnsignedLongLong()
  external int steamIdOwner;
}

extension RemoteStorageDownloadUgcResultExtensions
    on Pointer<RemoteStorageDownloadUgcResult> {
  EResult get result => EResult.fromValue(ref.result);

  UgcHandle get file => ref.file;

  AppId get appId => ref.appId;

  int get sizeInBytes => ref.sizeInBytes;

  Array<Char> get fileName => ref.fileName;

  int get steamIdOwner => ref.steamIdOwner;
}
