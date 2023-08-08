// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class SubmitItemUpdateResult extends Struct {
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
