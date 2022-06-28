// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

@Packed(8)
class GameWebCallback extends Struct {
  static int get callbackId => 164;

  external Pointer<Utf8> url;
}

extension GameWebCallbackExtensions on Pointer<GameWebCallback> {
  Pointer<Utf8> get url => ref.url;
}
