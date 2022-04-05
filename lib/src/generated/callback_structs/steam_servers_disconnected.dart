// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class SteamServersDisconnected extends Struct {
  static int get callbackId => 103;

  @Int32()
  external EResult result;
}

extension SteamServersDisconnectedExtensions
    on Pointer<SteamServersDisconnected> {
  EResult get result => ref.result;
}
