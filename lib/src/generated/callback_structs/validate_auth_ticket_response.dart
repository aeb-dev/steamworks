import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_auth_session_response.dart";
import "../typedefs.dart";

@Packed(8)
class ValidateAuthTicketResponse extends Struct {
  @UnsignedLongLong()
  external CSteamId steamId;

  @Int32()
  external EAuthSessionResponse authSessionResponse;

  @UnsignedLongLong()
  external CSteamId ownerSteamId;
}
