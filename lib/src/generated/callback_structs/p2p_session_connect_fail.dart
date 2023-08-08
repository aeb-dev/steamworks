// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class P2pSessionConnectFail extends Struct {
  static int get callbackId => 1203;

  @UnsignedLongLong()
  external CSteamId steamIdRemote;

  @UnsignedChar()
  external int p2pSessionError;
}

extension P2pSessionConnectFailExtensions on Pointer<P2pSessionConnectFail> {
  CSteamId get steamIdRemote => ref.steamIdRemote;

  int get p2pSessionError => ref.p2pSessionError;
}
