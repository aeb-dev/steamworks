// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageEnumerateWorkshopFilesResult extends Struct {
  static int get callbackId => 1319;

  @Int32()
  external EResult result;

  @Int()
  external int resultsReturned;

  @Int()
  external int totalResultCount;

  @Array<UnsignedLongLong>(50)
  external Array<UnsignedLongLong> publishedFileId;

  @Array<Float>(50)
  external Array<Float> score;

  @UnsignedInt()
  external AppId appId;

  @UnsignedInt()
  external int startIndex;
}

extension RemoteStorageEnumerateWorkshopFilesResultExtensions
    on Pointer<RemoteStorageEnumerateWorkshopFilesResult> {
  EResult get result => ref.result;

  int get resultsReturned => ref.resultsReturned;

  int get totalResultCount => ref.totalResultCount;

  Array<UnsignedLongLong> get publishedFileId => ref.publishedFileId;

  Array<Float> get score => ref.score;

  AppId get appId => ref.appId;

  int get startIndex => ref.startIndex;
}
