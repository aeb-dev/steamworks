import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class SteamUgcQueryCompleted extends Struct {
  @UnsignedLongLong()
  external UgcQueryHandle andle;

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
