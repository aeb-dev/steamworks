import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class GetAuthSessionTicketResponse extends Struct {
  @UnsignedInt()
  external HAuthTicket authTicket;

  @Int32()
  external EResult result;
}
