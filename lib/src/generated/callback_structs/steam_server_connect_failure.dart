// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class SteamServerConnectFailure extends Struct {
  static int get callbackId => 102;

  @Int32()
  external EResultAliasDart result;

  @Bool()
  external bool stillRetrying;
}

extension SteamServerConnectFailureExtensions
    on Pointer<SteamServerConnectFailure> {
  EResult get result => EResult.fromValue(ref.result);

  bool get stillRetrying => ref.stillRetrying;
}
