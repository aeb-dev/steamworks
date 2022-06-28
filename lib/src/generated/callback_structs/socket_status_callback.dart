// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class SocketStatusCallback extends Struct {
  static int get callbackId => 1201;

  @UnsignedInt()
  external SnetSocket socket;

  @UnsignedInt()
  external SnetListenSocket listenSocket;

  @UnsignedLongLong()
  external CSteamId steamIdRemote;

  @Int()
  external int snetSocketState;
}

extension SocketStatusCallbackExtensions on Pointer<SocketStatusCallback> {
  SnetSocket get socket => ref.socket;

  SnetListenSocket get listenSocket => ref.listenSocket;

  CSteamId get steamIdRemote => ref.steamIdRemote;

  int get snetSocketState => ref.snetSocketState;
}
