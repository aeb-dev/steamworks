import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class GetAppDependenciesResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Array<UnsignedInt>(32)
  external Array<UnsignedInt> appIds;

  @UnsignedInt()
  external int numAppDependencies;

  @UnsignedInt()
  external int totalNumAppDependencies;
}
