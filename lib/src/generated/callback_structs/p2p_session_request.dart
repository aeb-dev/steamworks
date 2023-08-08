// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class P2pSessionRequest extends Struct {
  static int get callbackId => 1202;

  @UnsignedLongLong()
  external CSteamId steamIdRemote;
}

extension P2pSessionRequestExtensions on Pointer<P2pSessionRequest> {
  CSteamId get steamIdRemote => ref.steamIdRemote;
}
