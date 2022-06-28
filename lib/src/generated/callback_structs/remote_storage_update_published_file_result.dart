// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageUpdatePublishedFileResult extends Struct {
  static int get callbackId => 1316;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Bool()
  external bool userNeedsToAcceptWorkshopLegalAgreement;
}

extension RemoteStorageUpdatePublishedFileResultExtensions
    on Pointer<RemoteStorageUpdatePublishedFileResult> {
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;

  bool get userNeedsToAcceptWorkshopLegalAgreement =>
      ref.userNeedsToAcceptWorkshopLegalAgreement;
}
