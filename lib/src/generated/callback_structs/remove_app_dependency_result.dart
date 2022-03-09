import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class RemoveAppDependencyResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId appId;
}
