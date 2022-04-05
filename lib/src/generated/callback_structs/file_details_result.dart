// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class FileDetailsResult extends Struct {
  static int get callbackId => 1023;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int fileSize;

  @Array<UnsignedChar>(20)
  external Array<UnsignedChar> fileSHA;

  @UnsignedInt()
  external int flags;
}

extension FileDetailsResultExtensions on Pointer<FileDetailsResult> {
  EResult get result => ref.result;

  int get fileSize => ref.fileSize;

  Array<UnsignedChar> get fileSHA => ref.fileSHA;

  int get flags => ref.flags;
}
