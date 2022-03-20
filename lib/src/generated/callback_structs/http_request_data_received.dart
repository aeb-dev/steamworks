import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HttpRequestDataReceived extends Struct {
  @UnsignedInt()
  external HttpRequestHandle request;

  @UnsignedLongLong()
  external int contextValue;

  @UnsignedInt()
  external int offset;

  @UnsignedInt()
  external int bytesReceived;
}
