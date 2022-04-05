// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class StoreAuthUrlResponse extends Struct {
  static int get callbackId => 165;

  external Pointer<Utf8> url;
}

extension StoreAuthUrlResponseExtensions on Pointer<StoreAuthUrlResponse> {
  Pointer<Utf8> get url => ref.url;
}
