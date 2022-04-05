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
  external EResult result;
}

extension SetPersonaNameResponseExtensions on Pointer<SetPersonaNameResponse> {
  bool get success => ref.success;

  bool get localSuccess => ref.localSuccess;

  EResult get result => ref.result;
}
