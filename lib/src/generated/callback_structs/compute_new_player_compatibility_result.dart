import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class ComputeNewPlayerCompatibilityResult extends Struct {
  @Int32()
  external EResult result;

  @Int()
  external int cPlayersThatDontLikeCandidate;

  @Int()
  external int cPlayersThatCandidateDoesntLike;

  @Int()
  external int cClanPlayersThatDontLikeCandidate;

  @UnsignedLongLong()
  external CSteamId steamIdCandidate;
}
