// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
final class AppProofOfPurchaseKeyResponse extends Struct {
  static int get callbackId => 1021;

  @Int32()
  external EResultAliasDart result;

  @UnsignedInt()
  external int appId;

  @UnsignedInt()
  external int keyLength;

  external Pointer<Utf8> key;
}

extension AppProofOfPurchaseKeyResponseExtensions
    on Pointer<AppProofOfPurchaseKeyResponse> {
  EResult get result => EResult.fromValue(ref.result);

  int get appId => ref.appId;

  int get keyLength => ref.keyLength;

  Pointer<Utf8> get key => ref.key;
}
