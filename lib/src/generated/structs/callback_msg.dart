// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class CallbackMsg extends Struct {
  @Int()
  external HSteamUser steamUser;

  @Int()
  external int callback;

  external Pointer<UnsignedChar> paramPtr;

  @Int()
  external int paramSize;
}

extension CallbackMsgExtensions on Pointer<CallbackMsg> {
  HSteamUser get steamUser => ref.steamUser;

  int get callback => ref.callback;

  Pointer<UnsignedChar> get paramPtr => ref.paramPtr;

  int get paramSize => ref.paramSize;
}
