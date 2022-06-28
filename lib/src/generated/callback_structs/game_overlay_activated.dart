// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class GameOverlayActivated extends Struct {
  static int get callbackId => 331;

  @UnsignedChar()
  external int active;
}

extension GameOverlayActivatedExtensions on Pointer<GameOverlayActivated> {
  int get active => ref.active;
}
