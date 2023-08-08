// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class GamepadTextInputDismissed extends Struct {
  static int get callbackId => 714;

  @Bool()
  external bool submitted;

  @UnsignedInt()
  external int submittedText;

  @UnsignedInt()
  external AppId appId;
}

extension GamepadTextInputDismissedExtensions
    on Pointer<GamepadTextInputDismissed> {
  bool get submitted => ref.submitted;

  int get submittedText => ref.submittedText;

  AppId get appId => ref.appId;
}
