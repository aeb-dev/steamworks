// ignore_for_file: public_member_api_docs
import "dart:ffi";

@Packed(8)
class MusicPlayerWantsShuffled extends Struct {
  static int get callbackId => 4109;

  @Bool()
  external bool shuffled;
}

extension MusicPlayerWantsShuffledExtensions
    on Pointer<MusicPlayerWantsShuffled> {
  bool get shuffled => ref.shuffled;
}
