// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class GetVideoUrlResult extends Struct {
  static int get callbackId => 4611;

  @Int32()
  external EResult result;

  @UnsignedInt()
  external AppId videoAppId;

  external Pointer<Utf8> url;
}

extension GetVideoUrlResultExtensions on Pointer<GetVideoUrlResult> {
  EResult get result => ref.result;

  AppId get videoAppId => ref.videoAppId;

  Pointer<Utf8> get url => ref.url;
}
