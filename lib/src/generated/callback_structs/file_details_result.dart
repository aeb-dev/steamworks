// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class FileDetailsResult extends Struct {
  static int get callbackId => 1023;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int fileSize;

  @Array<UnsignedChar>(20)
  external Array<UnsignedChar> fileSHA;

  @UnsignedInt()
  external int flags;
}

extension FileDetailsResultExtensions on Pointer<FileDetailsResult> {
  EResult get result => EResult.fromValue(ref.result);

  int get fileSize => ref.fileSize;

  Array<UnsignedChar> get fileSHA => ref.fileSHA;

  int get flags => ref.flags;
}
