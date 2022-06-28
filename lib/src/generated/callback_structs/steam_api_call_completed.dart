// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class SteamApiCallCompleted extends Struct {
  static int get callbackId => 703;

  @UnsignedLongLong()
  external SteamApiCall asyncCall;

  @Int()
  external int callback;

  @UnsignedInt()
  external int paramSize;
}

extension SteamApiCallCompletedExtensions on Pointer<SteamApiCallCompleted> {
  SteamApiCall get asyncCall => ref.asyncCall;

  int get callback => ref.callback;

  int get paramSize => ref.paramSize;
}
