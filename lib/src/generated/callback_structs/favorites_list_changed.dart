import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class FavoritesListChanged extends Struct {
  @UnsignedInt()
  external int ip;

  @UnsignedInt()
  external int queryPort;

  @UnsignedInt()
  external int connPort;

  @UnsignedInt()
  external int appId;

  @UnsignedInt()
  external int flags;

  @Bool()
  external bool add;

  @UnsignedInt()
  external AccountId accountId;
}
