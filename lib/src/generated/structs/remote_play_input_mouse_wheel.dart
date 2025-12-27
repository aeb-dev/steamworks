// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eremote_play_mouse_wheel_direction.dart";

@Packed(4)
final class RemotePlayInputMouseWheel extends Struct {
  @Int32()
  external ERemotePlayMouseWheelDirectionAliasDart direction;

  @Float()
  external double amount;
}

extension RemotePlayInputMouseWheelExtensions
    on Pointer<RemotePlayInputMouseWheel> {
  ERemotePlayMouseWheelDirection get direction =>
      ERemotePlayMouseWheelDirection.fromValue(ref.direction);

  double get amount => ref.amount;
}
