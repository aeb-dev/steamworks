import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class CallbackMsg extends Struct {
  @Int()
  external HSteamUser steamUser;

  @Int()
  external int callback;

  external Pointer<UnsignedChar> paramPtr;

  @Int()
  external int paramSize;
}

extension CallbackMsgExtensions on Pointer<CallbackMsg> {
  HSteamUser get steamUser => ref.steamUser;

  int get callback => ref.callback;

  Pointer<UnsignedChar> get paramPtr => ref.paramPtr;

  int get paramSize => ref.paramSize;
}
