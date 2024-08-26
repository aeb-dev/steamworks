// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

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

  @Array<Char>(129)
  external Array<Char> title;

  @Array<Char>(8000)
  external Array<Char> description;

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

  @Array<Char>(1025)
  external Array<Char> tags;

  @UnsignedLongLong()
  external UgcHandle file;

  @UnsignedLongLong()
  external UgcHandle previewFile;

  @Array<Char>(260)
  external Array<Char> fileName;

  @Int()
  external int fileSize;

  @Int()
  external int previewFileSize;

  @Array<Char>(256)
  external Array<Char> url;

  @UnsignedInt()
  external int votesUp;

  @UnsignedInt()
  external int votesDown;

  @Float()
  external double score;

  @UnsignedInt()
  external int numChildren;

  @UnsignedLongLong()
  external int totalFilesSize;
}

extension SteamUgcDetailsExtensions on Pointer<SteamUgcDetails> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => EResult.fromValue(ref.result);

  EWorkshopFileType get fileType => EWorkshopFileType.fromValue(ref.fileType);

  AppId get creatorAppId => ref.creatorAppId;

  AppId get consumerAppId => ref.consumerAppId;

  Array<Char> get title => ref.title;

  Array<Char> get description => ref.description;

  int get steamIdOwner => ref.steamIdOwner;

  int get timeCreated => ref.timeCreated;

  int get timeUpdated => ref.timeUpdated;

  int get timeAddedToUserList => ref.timeAddedToUserList;

  ERemoteStoragePublishedFileVisibility get visibility =>
      ERemoteStoragePublishedFileVisibility.fromValue(ref.visibility);

  bool get banned => ref.banned;

  bool get acceptedForUse => ref.acceptedForUse;

  bool get tagsTruncated => ref.tagsTruncated;

  Array<Char> get tags => ref.tags;

  UgcHandle get file => ref.file;

  UgcHandle get previewFile => ref.previewFile;

  Array<Char> get fileName => ref.fileName;

  int get fileSize => ref.fileSize;

  int get previewFileSize => ref.previewFileSize;

  Array<Char> get url => ref.url;

  int get votesUp => ref.votesUp;

  int get votesDown => ref.votesDown;

  double get score => ref.score;

  int get numChildren => ref.numChildren;

  int get totalFilesSize => ref.totalFilesSize;
}
