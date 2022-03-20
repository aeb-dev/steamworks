import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class ItemInstalled extends Struct {
  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}
