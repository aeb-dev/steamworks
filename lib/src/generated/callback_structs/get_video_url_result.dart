// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class GetVideoUrlResult extends Struct {
  static int get callbackId => 4611;

  @Int32()
  external EResultAliasDart result;

  @UnsignedInt()
  external AppId videoAppId;

  external Pointer<Utf8> url;
}

extension GetVideoUrlResultExtensions on Pointer<GetVideoUrlResult> {
  EResult get result => EResult.fromValue(ref.result);

  AppId get videoAppId => ref.videoAppId;

  Pointer<Utf8> get url => ref.url;
}
