// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(4)
final class RemotePlayInputKey extends Struct {
  @Int()
  external int scancode;

  @UnsignedInt()
  external int modifiers;

  @UnsignedInt()
  external int keycode;
}

extension RemotePlayInputKeyExtensions on Pointer<RemotePlayInputKey> {
  int get scancode => ref.scancode;

  int get modifiers => ref.modifiers;

  int get keycode => ref.keycode;
}
