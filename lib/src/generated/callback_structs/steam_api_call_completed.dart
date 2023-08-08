// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class SteamApiCallCompleted extends Struct {
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
