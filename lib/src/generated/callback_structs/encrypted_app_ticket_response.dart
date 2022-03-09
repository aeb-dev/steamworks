import "dart:ffi";
import "../enums/e_result.dart";

@Packed(4)
class EncryptedAppTicketResponse extends Struct {
  @Int32()
  external EResult result;
}
