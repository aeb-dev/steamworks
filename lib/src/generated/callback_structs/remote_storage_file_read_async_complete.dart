import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStorageFileReadAsyncComplete extends Struct {
  @UnsignedLongLong()
  external SteamApiCall fileReadAsync;

  @Int32()
  external EResult result;

  @UnsignedInt()
  external int offset;

  @UnsignedInt()
  external int read;
}
