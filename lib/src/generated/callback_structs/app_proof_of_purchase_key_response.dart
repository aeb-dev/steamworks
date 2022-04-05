// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class AppProofOfPurchaseKeyResponse extends Struct {
  static int get callbackId => 1021;

  @Int32()
  external EResult result;

  @UnsignedInt()
  external int appId;

  @UnsignedInt()
  external int keyLength;

  external Pointer<Utf8> key;
}

extension AppProofOfPurchaseKeyResponseExtensions
    on Pointer<AppProofOfPurchaseKeyResponse> {
  EResult get result => ref.result;

  int get appId => ref.appId;

  int get keyLength => ref.keyLength;

  Pointer<Utf8> get key => ref.key;
}
