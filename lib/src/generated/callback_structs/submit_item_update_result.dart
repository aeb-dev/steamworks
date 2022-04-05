// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SubmitItemUpdateResult extends Struct {
  static int get callbackId => 3404;

  @Int32()
  external EResult result;

  @Bool()
  external bool userNeedsToAcceptWorkshopLegalAgreement;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}

extension SubmitItemUpdateResultExtensions on Pointer<SubmitItemUpdateResult> {
  EResult get result => ref.result;

  bool get userNeedsToAcceptWorkshopLegalAgreement =>
      ref.userNeedsToAcceptWorkshopLegalAgreement;

  PublishedFileId get publishedFileId => ref.publishedFileId;
}
