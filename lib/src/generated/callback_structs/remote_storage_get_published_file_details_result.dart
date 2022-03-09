import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_remote_storage_published_file_visibility.dart";
import "../enums/e_result.dart";
import "../enums/e_workshop_file_type.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStorageGetPublishedFileDetailsResult extends Struct {
  @Int32()
  external EResult result;

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
  external ERemoteStoragePublishedFileVisibility visibility;

  @Bool()
  external bool banned;

  external Pointer<Utf8> tags;

  @Bool()
  external bool tagsTruncated;

  external Pointer<Utf8> pchFileName;

  @Int()
  external int fileSize;

  @Int()
  external int previewFileSize;

  external Pointer<Utf8> url;

  @Int32()
  external EWorkshopFileType fileType;

  @Bool()
  external bool acceptedForUse;
}
