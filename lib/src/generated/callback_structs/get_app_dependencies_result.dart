import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class GetAppDependenciesResult extends Struct {
  static int get callbackId => 3416;

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

extension GetAppDependenciesResultExtensions
    on Pointer<GetAppDependenciesResult> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  Array<UnsignedInt> get appIds => ref.appIds;

  int get numAppDependencies => ref.numAppDependencies;

  int get totalNumAppDependencies => ref.totalNumAppDependencies;
}
