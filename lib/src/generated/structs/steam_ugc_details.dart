// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eremote_storage_published_file_visibility.dart";
import "../enums/eresult.dart";
import "../enums/eworkshop_file_type.dart";
import "../typedefs.dart";

@Packed(8)
final class SteamUgcDetails extends Struct {
  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResultAliasDart result;

  @Int32()
  external EWorkshopFileTypeAliasDart fileType;

  @UnsignedInt()
  external AppId creatorAppId;

  @UnsignedInt()
  external AppId consumerAppId;

  external Pointer<Utf8> title;

  external Pointer<Utf8> description;

  @UnsignedLongLong()
  external int steamIdOwner;

  @UnsignedInt()
  external int timeCreated;

  @UnsignedInt()
  external int timeUpdated;

  @UnsignedInt()
  external int timeAddedToUserList;

  @Int32()
  external ERemoteStoragePublishedFileVisibilityAliasDart visibility;

  @Bool()
  external bool banned;

  @Bool()
  external bool acceptedForUse;

  @Bool()
  external bool tagsTruncated;

  external Pointer<Utf8> tags;

  @UnsignedLongLong()
  external UgcHandle file;

  @UnsignedLongLong()
  external UgcHandle previewFile;

  external Pointer<Utf8> fileName;

  @Int()
  external int fileSize;

  @Int()
  external int previewFileSize;

  external Pointer<Utf8> url;

  @UnsignedInt()
  external int votesUp;

  @UnsignedInt()
  external int votesDown;

  @Float()
  external double score;

  @UnsignedInt()
  external int numChildren;
}

extension SteamUgcDetailsExtensions on Pointer<SteamUgcDetails> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => EResult.fromValue(ref.result);

  EWorkshopFileType get fileType => EWorkshopFileType.fromValue(ref.fileType);

  AppId get creatorAppId => ref.creatorAppId;

  AppId get consumerAppId => ref.consumerAppId;

  Pointer<Utf8> get title => ref.title;

  Pointer<Utf8> get description => ref.description;

  int get steamIdOwner => ref.steamIdOwner;

  int get timeCreated => ref.timeCreated;

  int get timeUpdated => ref.timeUpdated;

  int get timeAddedToUserList => ref.timeAddedToUserList;

  ERemoteStoragePublishedFileVisibility get visibility =>
      ERemoteStoragePublishedFileVisibility.fromValue(ref.visibility);

  bool get banned => ref.banned;

  bool get acceptedForUse => ref.acceptedForUse;

  bool get tagsTruncated => ref.tagsTruncated;

  Pointer<Utf8> get tags => ref.tags;

  UgcHandle get file => ref.file;

  UgcHandle get previewFile => ref.previewFile;

  Pointer<Utf8> get fileName => ref.fileName;

  int get fileSize => ref.fileSize;

  int get previewFileSize => ref.previewFileSize;

  Pointer<Utf8> get url => ref.url;

  int get votesUp => ref.votesUp;

  int get votesDown => ref.votesDown;

  double get score => ref.score;

  int get numChildren => ref.numChildren;
}
