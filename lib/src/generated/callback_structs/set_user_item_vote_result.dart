// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class SetUserItemVoteResult extends Struct {
  static int get callbackId => 3408;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResultAliasDart result;

  @Bool()
  external bool voteUp;
}

extension SetUserItemVoteResultExtensions on Pointer<SetUserItemVoteResult> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => EResult.fromValue(ref.result);

  bool get voteUp => ref.voteUp;
}
