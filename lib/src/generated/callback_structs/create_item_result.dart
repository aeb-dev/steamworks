// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class CreateItemResult extends Struct {
  static int get callbackId => 3403;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Bool()
  external bool userNeedsToAcceptWorkshopLegalAgreement;
}

extension CreateItemResultExtensions on Pointer<CreateItemResult> {
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;

  bool get userNeedsToAcceptWorkshopLegalAgreement =>
      ref.userNeedsToAcceptWorkshopLegalAgreement;
}
