import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class DownloadItemResult extends Struct {
  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResult result;
}
