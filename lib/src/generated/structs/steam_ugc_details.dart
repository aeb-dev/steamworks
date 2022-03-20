import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_remote_storage_published_file_visibility.dart";
import "../enums/e_result.dart";
import "../enums/e_workshop_file_type.dart";
import "../typedefs.dart";

@Packed(8)
class SteamUgcDetails extends Struct {
  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResult result;

  @Int32()
  external EWorkshopFileType fileType;

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
  external ERemoteStoragePublishedFileVisibility visibility;

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
