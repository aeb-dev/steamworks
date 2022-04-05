// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class GameOverlayActivated extends Struct {
  static int get callbackId => 331;

  @UnsignedChar()
  external int active;
}

extension GameOverlayActivatedExtensions on Pointer<GameOverlayActivated> {
  int get active => ref.active;
}
