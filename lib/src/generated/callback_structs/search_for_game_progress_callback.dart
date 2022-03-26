import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class SearchForGameProgressCallback extends Struct {
  @UnsignedLongLong()
  external int searchId;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId lobbyId;

  @UnsignedLongLong()
  external CSteamId steamIdEndedSearch;

  @Int()
  external int secondsRemainingEstimate;

  @Int()
  external int playersSearching;
}