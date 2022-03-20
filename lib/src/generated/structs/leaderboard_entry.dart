import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class LeaderboardEntry extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Int()
  external int globalRank;

  @Int()
  external int score;

  @Int()
  external int details;

  @UnsignedLongLong()
  external UgcHandle ugc;
}
