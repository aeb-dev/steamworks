// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class PersonaStateChange extends Struct {
  static int get callbackId => 304;

  @UnsignedLongLong()
  external int steamId;

  @Int()
  external int changeFlags;
}

extension PersonaStateChangeExtensions on Pointer<PersonaStateChange> {
  int get steamId => ref.steamId;

  int get changeFlags => ref.changeFlags;
}
