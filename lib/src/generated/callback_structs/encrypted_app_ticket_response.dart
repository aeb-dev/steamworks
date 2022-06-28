// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class EncryptedAppTicketResponse extends Struct {
  static int get callbackId => 154;

  @Int32()
  external EResultAliasDart result;
}

extension EncryptedAppTicketResponseExtensions
    on Pointer<EncryptedAppTicketResponse> {
  EResult get result => EResult.fromValue(ref.result);
}
