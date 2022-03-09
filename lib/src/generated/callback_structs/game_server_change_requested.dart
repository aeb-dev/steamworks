import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class GameServerChangeRequested extends Struct {
  external Pointer<Utf8> server;

  external Pointer<Utf8> password;
}
