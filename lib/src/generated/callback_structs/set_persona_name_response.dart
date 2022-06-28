// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class SetPersonaNameResponse extends Struct {
  static int get callbackId => 347;

  @Bool()
  external bool success;

  @Bool()
  external bool localSuccess;

  @Int32()
  external EResultAliasDart result;
}

extension SetPersonaNameResponseExtensions on Pointer<SetPersonaNameResponse> {
  bool get success => ref.success;

  bool get localSuccess => ref.localSuccess;

  EResult get result => EResult.fromValue(ref.result);
}
