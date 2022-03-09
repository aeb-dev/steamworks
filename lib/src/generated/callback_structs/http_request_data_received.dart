import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HttpRequestDataReceived extends Struct {
  @UnsignedInt()
  external HttpRequestHandle request;

  @UnsignedLongLong()
  external int contextValue;

  @UnsignedInt()
  external int cOffset;

  @UnsignedInt()
  external int cBytesReceived;
}
