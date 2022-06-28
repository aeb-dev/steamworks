// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class HttpRequestHeadersReceived extends Struct {
  static int get callbackId => 2102;

  @UnsignedInt()
  external HttpRequestHandle request;

  @UnsignedLongLong()
  external int contextValue;
}

extension HttpRequestHeadersReceivedExtensions
    on Pointer<HttpRequestHeadersReceived> {
  HttpRequestHandle get request => ref.request;

  int get contextValue => ref.contextValue;
}
