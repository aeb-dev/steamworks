// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class RemoteStoragePublishedFileUpdated extends Struct {
  static int get callbackId => 1330;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external int unused;
}

extension RemoteStoragePublishedFileUpdatedExtensions
    on Pointer<RemoteStoragePublishedFileUpdated> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  AppId get appId => ref.appId;

  int get unused => ref.unused;
}
