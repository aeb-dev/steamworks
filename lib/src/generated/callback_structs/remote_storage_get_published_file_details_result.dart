// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eremote_storage_published_file_visibility.dart";
import "../enums/eresult.dart";
import "../enums/eworkshop_file_type.dart";
import "../typedefs.dart";

@Packed(8)
final class RemoteStorageGetPublishedFileDetailsResult extends Struct {
  static int get callbackId => 1318;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId creatorAppId;

  @UnsignedInt()
  external AppId consumerAppId;

  @Array<Char>(129)
  external Array<Char> title;

  @Array<Char>(8000)
  external Array<Char> description;

  @UnsignedLongLong()
  external UgcHandle file;

  @UnsignedLongLong()
  external UgcHandle previewFile;

  @UnsignedLongLong()
  external int steamIdOwner;

  @UnsignedInt()
  external int timeCreated;

  @UnsignedInt()
  external int timeUpdated;

  @Int32()
  external ERemoteStoragePublishedFileVisibilityAliasDart visibility;

  @Bool()
  external bool banned;

  @Array<Char>(1025)
  external Array<Char> tags;

  @Bool()
  external bool tagsTruncated;

  @Array<Char>(260)
  external Array<Char> fileName;

  @Int()
  external int fileSize;

  @Int()
  external int previewFileSize;

  @Array<Char>(256)
  external Array<Char> url;

  @Int32()
  external EWorkshopFileTypeAliasDart fileType;

  @Bool()
  external bool acceptedForUse;
}

extension RemoteStorageGetPublishedFileDetailsResultExtensions
    on Pointer<RemoteStorageGetPublishedFileDetailsResult> {
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;

  AppId get creatorAppId => ref.creatorAppId;

  AppId get consumerAppId => ref.consumerAppId;

  Array<Char> get title => ref.title;

  Array<Char> get description => ref.description;

  UgcHandle get file => ref.file;

  UgcHandle get previewFile => ref.previewFile;

  int get steamIdOwner => ref.steamIdOwner;

  int get timeCreated => ref.timeCreated;

  int get timeUpdated => ref.timeUpdated;

  ERemoteStoragePublishedFileVisibility get visibility =>
      ERemoteStoragePublishedFileVisibility.fromValue(ref.visibility);

  bool get banned => ref.banned;

  Array<Char> get tags => ref.tags;

  bool get tagsTruncated => ref.tagsTruncated;

  Array<Char> get fileName => ref.fileName;

  int get fileSize => ref.fileSize;

  int get previewFileSize => ref.previewFileSize;

  Array<Char> get url => ref.url;

  EWorkshopFileType get fileType => EWorkshopFileType.fromValue(ref.fileType);

  bool get acceptedForUse => ref.acceptedForUse;
}
