// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eauth_session_response.dart";
import "../typedefs.dart";

@Packed(8)
class ValidateAuthTicketResponse extends Struct {
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
