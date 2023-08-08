// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
final class SteamRemotePlayTogetherGuestInvite extends Struct {
  static int get callbackId => 5703;

  external Pointer<Utf8> connectUrl;
}

extension SteamRemotePlayTogetherGuestInviteExtensions
    on Pointer<SteamRemotePlayTogetherGuestInvite> {
  Pointer<Utf8> get connectUrl => ref.connectUrl;
}
