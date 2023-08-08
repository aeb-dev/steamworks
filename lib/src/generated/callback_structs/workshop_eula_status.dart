// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class WorkshopEulaStatus extends Struct {
  static int get callbackId => 3420;

  @Int32()
  external EResultAliasDart result;

  @UnsignedInt()
  external AppId appId;

  @UnsignedInt()
  external int version;

  @UnsignedInt()
  external RTime32 action;

  @Bool()
  external bool accepted;

  @Bool()
  external bool needsAction;
}

extension WorkshopEulaStatusExtensions on Pointer<WorkshopEulaStatus> {
  EResult get result => EResult.fromValue(ref.result);

  AppId get appId => ref.appId;

  int get version => ref.version;

  RTime32 get action => ref.action;

  bool get accepted => ref.accepted;

  bool get needsAction => ref.needsAction;
}
