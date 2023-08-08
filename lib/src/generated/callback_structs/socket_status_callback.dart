// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class SocketStatusCallback extends Struct {
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
