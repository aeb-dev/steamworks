import "dart:ffi";

import "../enums/e_result.dart";

@Packed(8)
class AssociateWithClanResult extends Struct {
  @Int32()
  external EResult result;
}
