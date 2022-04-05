// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class GetAuthSessionTicketResponse extends Struct {
  static int get callbackId => 163;

  @UnsignedInt()
  external HAuthTicket authTicket;

  @Int32()
  external EResult result;
}

extension GetAuthSessionTicketResponseExtensions
    on Pointer<GetAuthSessionTicketResponse> {
  HAuthTicket get authTicket => ref.authTicket;

  EResult get result => ref.result;
}
