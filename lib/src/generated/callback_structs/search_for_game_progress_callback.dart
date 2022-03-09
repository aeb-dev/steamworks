import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class SearchForGameProgressCallback extends Struct {
  @UnsignedLongLong()
  external int lSearchId;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId lobbyId;

  @UnsignedLongLong()
  external CSteamId steamIdEndedSearch;

  @Int()
  external int secondsRemainingEstimate;

  @Int()
  external int cPlayersSearching;
}
