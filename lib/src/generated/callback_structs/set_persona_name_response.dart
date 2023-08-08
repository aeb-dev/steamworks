// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class SetPersonaNameResponse extends Struct {
  static int get callbackId => 347;

  @Bool()
  external bool success;

  @Bool()
  external bool localSuccess;

  @Int32()
  external EResultAliasDart result;
}

extension SetPersonaNameResponseExtensions on Pointer<SetPersonaNameResponse> {
  bool get success => ref.success;

  bool get localSuccess => ref.localSuccess;

  EResult get result => EResult.fromValue(ref.result);
}
