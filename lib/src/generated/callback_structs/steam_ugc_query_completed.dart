import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class SteamUgcQueryCompleted extends Struct {
  @UnsignedLongLong()
  external UgcQueryHandle handle;

  @Int32()
  external EResult result;

  @UnsignedInt()
  external int numResultsReturned;

  @UnsignedInt()
  external int totalMatchingResults;

  @Bool()
  external bool cachedData;

  external Pointer<Utf8> nextCursor;
}
