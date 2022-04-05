import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class GamepadTextInputDismissed extends Struct {
  static int get callbackId => 714;

  @Bool()
  external bool submitted;

  @UnsignedInt()
  external int submittedText;
}

extension GamepadTextInputDismissedExtensions
    on Pointer<GamepadTextInputDismissed> {
  bool get submitted => ref.submitted;

  int get submittedText => ref.submittedText;
}
