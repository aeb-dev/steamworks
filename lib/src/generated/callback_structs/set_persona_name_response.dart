import "dart:ffi";

import "../enums/e_result.dart";

@Packed(8)
class SetPersonaNameResponse extends Struct {
  @Bool()
  external bool success;

  @Bool()
  external bool localSuccess;

  @Int32()
  external EResult result;
}
