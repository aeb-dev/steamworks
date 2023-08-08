// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class P2pSessionState extends Struct {
  @UnsignedChar()
  external int connectionActive;

  @UnsignedChar()
  external int connecting;

  @UnsignedChar()
  external int p2pSessionError;

  @UnsignedChar()
  external int usingRelay;

  @Int()
  external int bytesQueuedForSend;

  @Int()
  external int packetsQueuedForSend;

  @UnsignedInt()
  external int remoteIp;

  @UnsignedShort()
  external int remotePort;
}

extension P2pSessionStateExtensions on Pointer<P2pSessionState> {
  int get connectionActive => ref.connectionActive;

  int get connecting => ref.connecting;

  int get p2pSessionError => ref.p2pSessionError;

  int get usingRelay => ref.usingRelay;

  int get bytesQueuedForSend => ref.bytesQueuedForSend;

  int get packetsQueuedForSend => ref.packetsQueuedForSend;

  int get remoteIp => ref.remoteIp;

  int get remotePort => ref.remotePort;
}
