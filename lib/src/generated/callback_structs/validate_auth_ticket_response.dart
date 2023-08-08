// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eauth_session_response.dart";
import "../typedefs.dart";

@Packed(8)
final class ValidateAuthTicketResponse extends Struct {
  static int get callbackId => 143;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int32()
  external EAuthSessionResponseAliasDart authSessionResponse;

  @UnsignedLongLong()
  external CSteamId ownerSteamId;
}

extension ValidateAuthTicketResponseExtensions
    on Pointer<ValidateAuthTicketResponse> {
  CSteamId get steamId => ref.steamId;

  EAuthSessionResponse get authSessionResponse =>
      EAuthSessionResponse.fromValue(ref.authSessionResponse);

  CSteamId get ownerSteamId => ref.ownerSteamId;
}
