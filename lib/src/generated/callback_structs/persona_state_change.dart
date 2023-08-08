// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class PersonaStateChange extends Struct {
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
