// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class ItemInstalled extends Struct {
  static int get callbackId => 3405;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}

extension ItemInstalledExtensions on Pointer<ItemInstalled> {
  AppId get appId => ref.appId;

  PublishedFileId get publishedFileId => ref.publishedFileId;
}
