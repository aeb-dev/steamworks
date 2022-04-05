import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class GameServerChangeRequested extends Struct {
  static int get callbackId => 332;

  external Pointer<Utf8> server;

  external Pointer<Utf8> password;
}

extension GameServerChangeRequestedExtensions
    on Pointer<GameServerChangeRequested> {
  Pointer<Utf8> get server => ref.server;

  Pointer<Utf8> get password => ref.password;
}
