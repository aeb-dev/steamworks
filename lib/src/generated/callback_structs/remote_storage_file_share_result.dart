// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class RemoteStorageFileShareResult extends Struct {
  static int get callbackId => 1307;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external UgcHandle file;

  external Pointer<Utf8> filename;
}

extension RemoteStorageFileShareResultExtensions
    on Pointer<RemoteStorageFileShareResult> {
  EResult get result => EResult.fromValue(ref.result);

  UgcHandle get file => ref.file;

  Pointer<Utf8> get filename => ref.filename;
}
