// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class GameServerChangeRequested extends Struct {
  static int get callbackId => 332;

  @Array<Char>(64)
  external Array<Char> server;

  @Array<Char>(64)
  external Array<Char> password;
}

extension GameServerChangeRequestedExtensions
    on Pointer<GameServerChangeRequested> {
  Array<Char> get server => ref.server;

  Array<Char> get password => ref.password;
}
