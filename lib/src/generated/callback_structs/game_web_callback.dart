// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class GameWebCallback extends Struct {
  static int get callbackId => 164;

  @Array<Char>(256)
  external Array<Char> url;
}

extension GameWebCallbackExtensions on Pointer<GameWebCallback> {
  Array<Char> get url => ref.url;
}
