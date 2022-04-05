import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/ehttp_status_code.dart";
import "../typedefs.dart";

@Packed(8)
class HttpRequestCompleted extends Struct {
  static int get callbackId => 2101;

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

extension HttpRequestCompletedExtensions on Pointer<HttpRequestCompleted> {
  HttpRequestHandle get request => ref.request;

  int get contextValue => ref.contextValue;

  bool get requestSuccessful => ref.requestSuccessful;

  EHttpStatusCode get statusCode => ref.statusCode;

  int get bodySize => ref.bodySize;
}
