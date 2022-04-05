// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SearchForGameProgressCallback extends Struct {
  static int get callbackId => 5201;

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

extension SearchForGameProgressCallbackExtensions
    on Pointer<SearchForGameProgressCallback> {
  int get searchId => ref.searchId;

  EResult get result => ref.result;

  CSteamId get lobbyId => ref.lobbyId;

  CSteamId get steamIdEndedSearch => ref.steamIdEndedSearch;

  int get secondsRemainingEstimate => ref.secondsRemainingEstimate;

  int get playersSearching => ref.playersSearching;
}
