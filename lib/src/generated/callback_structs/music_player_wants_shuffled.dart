// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class MusicPlayerWantsShuffled extends Struct {
  static int get callbackId => 4109;

  @Bool()
  external bool shuffled;
}

extension MusicPlayerWantsShuffledExtensions
    on Pointer<MusicPlayerWantsShuffled> {
  bool get shuffled => ref.shuffled;
}
