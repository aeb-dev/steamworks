// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eremote_storage_published_file_visibility.dart";
import "../enums/eresult.dart";
import "../enums/eworkshop_file_type.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageGetPublishedFileDetailsResult extends Struct {
  static int get callbackId => 1318;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId creatorAppId;

  @UnsignedInt()
  external AppId consumerAppId;

  external Pointer<Utf8> title;

  external Pointer<Utf8> description;

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

  external Pointer<Utf8> tags;

  @Bool()
  external bool tagsTruncated;

  external Pointer<Utf8> fileName;

  @Int()
  external int fileSize;

  @Int()
  external int previewFileSize;

  external Pointer<Utf8> url;

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

  Pointer<Utf8> get title => ref.title;

  Pointer<Utf8> get description => ref.description;

  UgcHandle get file => ref.file;

  UgcHandle get previewFile => ref.previewFile;

  int get steamIdOwner => ref.steamIdOwner;

  int get timeCreated => ref.timeCreated;

  int get timeUpdated => ref.timeUpdated;

  ERemoteStoragePublishedFileVisibility get visibility =>
      ERemoteStoragePublishedFileVisibility.fromValue(ref.visibility);

  bool get banned => ref.banned;

  Pointer<Utf8> get tags => ref.tags;

  bool get tagsTruncated => ref.tagsTruncated;

  Pointer<Utf8> get fileName => ref.fileName;

  int get fileSize => ref.fileSize;

  int get previewFileSize => ref.previewFileSize;

  Pointer<Utf8> get url => ref.url;

  EWorkshopFileType get fileType => EWorkshopFileType.fromValue(ref.fileType);

  bool get acceptedForUse => ref.acceptedForUse;
}
