// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class SteamUgcQueryCompleted extends Struct {
  static int get callbackId => 3401;

  @UnsignedLongLong()
  external UgcQueryHandle handle;

  @Int32()
  external EResultAliasDart result;

  @UnsignedInt()
  external int numResultsReturned;

  @UnsignedInt()
  external int totalMatchingResults;

  @Bool()
  external bool cachedData;

  @Array<Char>(256)
  external Array<Char> nextCursor;
}

extension SteamUgcQueryCompletedExtensions on Pointer<SteamUgcQueryCompleted> {
  UgcQueryHandle get handle => ref.handle;

  EResult get result => EResult.fromValue(ref.result);

  int get numResultsReturned => ref.numResultsReturned;

  int get totalMatchingResults => ref.totalMatchingResults;

  bool get cachedData => ref.cachedData;

  Array<Char> get nextCursor => ref.nextCursor;
}
