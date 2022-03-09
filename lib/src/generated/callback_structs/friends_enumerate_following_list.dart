import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";

@Packed(8)
class FriendsEnumerateFollowingList extends Struct {
  @Int32()
  external EResult result;

  @Array<UnsignedLongLong>(50)
  external Array<UnsignedLongLong> gSteamId;

  @Int()
  external int resultsReturned;

  @Int()
  external int totalResultCount;
}
