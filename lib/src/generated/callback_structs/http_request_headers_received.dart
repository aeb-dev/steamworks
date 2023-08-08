// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class HttpRequestHeadersReceived extends Struct {
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
