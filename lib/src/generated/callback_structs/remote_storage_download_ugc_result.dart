import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStorageDownloadUgcResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external UgcHandle file;

  @UnsignedInt()
  external AppId appId;

  @Int()
  external int sizeInBytes;

  external Pointer<Utf8> pchFileName;

  @UnsignedLongLong()
  external int steamIdOwner;
}
