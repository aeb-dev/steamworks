// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class NumberOfCurrentPlayers extends Struct {
  static int get callbackId => 1107;

  @UnsignedChar()
  external int success;

  @Int()
  external int players;
}

extension NumberOfCurrentPlayersExtensions on Pointer<NumberOfCurrentPlayers> {
  int get success => ref.success;

  int get players => ref.players;
}
