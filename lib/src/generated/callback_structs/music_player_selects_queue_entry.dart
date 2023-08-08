// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class MusicPlayerSelectsQueueEntry extends Struct {
  static int get callbackId => 4012;

  @Int()
  external int nId;
}

extension MusicPlayerSelectsQueueEntryExtensions
    on Pointer<MusicPlayerSelectsQueueEntry> {
  int get nId => ref.nId;
}
