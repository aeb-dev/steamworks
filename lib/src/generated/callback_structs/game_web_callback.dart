// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
final class GameWebCallback extends Struct {
  static int get callbackId => 164;

  external Pointer<Utf8> url;
}

extension GameWebCallbackExtensions on Pointer<GameWebCallback> {
  Pointer<Utf8> get url => ref.url;
}
