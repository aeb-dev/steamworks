import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_http_status_code.dart";
import "../typedefs.dart";

@Packed(8)
class HttpRequestCompleted extends Struct {
  @UnsignedInt()
  external HttpRequestHandle request;

  @UnsignedLongLong()
  external int contextValue;

  @Bool()
  external bool requestSuccessful;

  @Int32()
  external EHttpStatusCode statusCode;

  @UnsignedInt()
  external int bodySize;
}
