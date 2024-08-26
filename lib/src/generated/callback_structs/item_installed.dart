// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class ItemInstalled extends Struct {
  static int get callbackId => 3405;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedLongLong()
  external UgcHandle legacyContent;

  @UnsignedLongLong()
  external int manifestId;
}

extension ItemInstalledExtensions on Pointer<ItemInstalled> {
  AppId get appId => ref.appId;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  UgcHandle get legacyContent => ref.legacyContent;

  int get manifestId => ref.manifestId;
}
