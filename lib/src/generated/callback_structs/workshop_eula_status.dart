import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class WorkshopEulaStatus extends Struct {
  @Int32()
  external EResult result;

  @UnsignedInt()
  external AppId appId;

  @UnsignedInt()
  external int version;

  @UnsignedInt()
  external RTime32 tAction;

  @Bool()
  external bool accepted;

  @Bool()
  external bool needsAction;
}
