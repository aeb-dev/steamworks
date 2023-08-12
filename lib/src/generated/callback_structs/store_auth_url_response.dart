// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class StoreAuthUrlResponse extends Struct {
  static int get callbackId => 165;

  @Array<Char>(512)
  external Array<Char> url;
}

extension StoreAuthUrlResponseExtensions on Pointer<StoreAuthUrlResponse> {
  Array<Char> get url => ref.url;
}
