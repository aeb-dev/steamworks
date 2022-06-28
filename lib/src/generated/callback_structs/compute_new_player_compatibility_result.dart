// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class ComputeNewPlayerCompatibilityResult extends Struct {
  static int get callbackId => 211;

  @Int32()
  external EResultAliasDart result;

  @Int()
  external int playersThatDontLikeCandidate;

  @Int()
  external int playersThatCandidateDoesntLike;

  @Int()
  external int clanPlayersThatDontLikeCandidate;

  @UnsignedLongLong()
  external CSteamId steamIdCandidate;
}

extension ComputeNewPlayerCompatibilityResultExtensions
    on Pointer<ComputeNewPlayerCompatibilityResult> {
  EResult get result => EResult.fromValue(ref.result);

  int get playersThatDontLikeCandidate => ref.playersThatDontLikeCandidate;

  int get playersThatCandidateDoesntLike => ref.playersThatCandidateDoesntLike;

  int get clanPlayersThatDontLikeCandidate =>
      ref.clanPlayersThatDontLikeCandidate;

  CSteamId get steamIdCandidate => ref.steamIdCandidate;
}
