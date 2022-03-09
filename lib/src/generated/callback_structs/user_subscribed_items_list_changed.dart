import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class UserSubscribedItemsListChanged extends Struct {
  @UnsignedInt()
  external AppId appId;
}
