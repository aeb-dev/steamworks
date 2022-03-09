import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class GamepadTextInputDismissed extends Struct {
  @Bool()
  external bool submitted;

  @UnsignedInt()
  external int submittedText;
}
