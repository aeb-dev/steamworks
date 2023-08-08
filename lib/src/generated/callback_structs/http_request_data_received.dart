// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class HttpRequestDataReceived extends Struct {
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
