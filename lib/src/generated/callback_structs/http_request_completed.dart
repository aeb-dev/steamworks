// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

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
  external EHttpStatusCodeAliasDart statusCode;

  @UnsignedInt()
  external int bodySize;
}

extension HttpRequestCompletedExtensions on Pointer<HttpRequestCompleted> {
  HttpRequestHandle get request => ref.request;

  int get contextValue => ref.contextValue;

  bool get requestSuccessful => ref.requestSuccessful;

  EHttpStatusCode get statusCode => EHttpStatusCode.fromValue(ref.statusCode);

  int get bodySize => ref.bodySize;
}
