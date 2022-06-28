// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class HttpRequestDataReceived extends Struct {
  static int get callbackId => 2103;

  @UnsignedInt()
  external HttpRequestHandle request;

  @UnsignedLongLong()
  external int contextValue;

  @UnsignedInt()
  external int offset;

  @UnsignedInt()
  external int bytesReceived;
}

extension HttpRequestDataReceivedExtensions
    on Pointer<HttpRequestDataReceived> {
  HttpRequestHandle get request => ref.request;

  int get contextValue => ref.contextValue;

  int get offset => ref.offset;

  int get bytesReceived => ref.bytesReceived;
}
