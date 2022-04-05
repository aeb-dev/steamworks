// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class EncryptedAppTicketResponse extends Struct {
  static int get callbackId => 154;

  @Int32()
  external EResult result;
}

extension EncryptedAppTicketResponseExtensions
    on Pointer<EncryptedAppTicketResponse> {
  EResult get result => ref.result;
}
