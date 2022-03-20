import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class ComputeNewPlayerCompatibilityResult extends Struct {
  @Int32()
  external EResult result;

  @Int()
  external int playersThatDontLikeCandidate;

  @Int()
  external int playersThatCandidateDoesntLike;

  @Int()
  external int clanPlayersThatDontLikeCandidate;

  @UnsignedLongLong()
  external CSteamId steamIdCandidate;
}
