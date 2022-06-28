// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SearchForGameProgressCallback extends Struct {
  static int get callbackId => 5201;

  @UnsignedLongLong()
  external int searchId;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external CSteamId lobbyId;

  @UnsignedLongLong()
  external CSteamId steamIdEndedSearch;

  @Int()
  external int secondsRemainingEstimate;

  @Int()
  external int playersSearching;
}

extension SearchForGameProgressCallbackExtensions
    on Pointer<SearchForGameProgressCallback> {
  int get searchId => ref.searchId;

  EResult get result => EResult.fromValue(ref.result);

  CSteamId get lobbyId => ref.lobbyId;

  CSteamId get steamIdEndedSearch => ref.steamIdEndedSearch;

  int get secondsRemainingEstimate => ref.secondsRemainingEstimate;

  int get playersSearching => ref.playersSearching;
}
