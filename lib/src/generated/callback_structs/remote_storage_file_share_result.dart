import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageFileShareResult extends Struct {
  static int get callbackId => 1307;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external UgcHandle file;

  external Pointer<Utf8> filename;
}

extension RemoteStorageFileShareResultExtensions
    on Pointer<RemoteStorageFileShareResult> {
  EResult get result => ref.result;

  UgcHandle get file => ref.file;

  Pointer<Utf8> get filename => ref.filename;
}
