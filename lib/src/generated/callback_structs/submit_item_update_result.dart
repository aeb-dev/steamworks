import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class SubmitItemUpdateResult extends Struct {
  @Int32()
  external EResult result;

  @Bool()
  external bool userNeedsToAcceptWorkshopLegalAgreement;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}
