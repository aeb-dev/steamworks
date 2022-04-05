// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class NumberOfCurrentPlayers extends Struct {
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
