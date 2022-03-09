import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class GetAppDependenciesResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Array<UnsignedInt>(32)
  external Array<UnsignedInt> gAppIds;

  @UnsignedInt()
  external int numAppDependencies;

  @UnsignedInt()
  external int totalNumAppDependencies;
}
