// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SubmitItemUpdateResult extends Struct {
  static int get callbackId => 3404;

  @Int32()
  external EResultAliasDart result;

  @Bool()
  external bool userNeedsToAcceptWorkshopLegalAgreement;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}

extension SubmitItemUpdateResultExtensions on Pointer<SubmitItemUpdateResult> {
  EResult get result => EResult.fromValue(ref.result);

  bool get userNeedsToAcceptWorkshopLegalAgreement =>
      ref.userNeedsToAcceptWorkshopLegalAgreement;

  PublishedFileId get publishedFileId => ref.publishedFileId;
}
