// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class GetAuthSessionTicketResponse extends Struct {
  static int get callbackId => 163;

  @UnsignedInt()
  external HAuthTicket authTicket;

  @Int32()
  external EResultAliasDart result;
}

extension GetAuthSessionTicketResponseExtensions
    on Pointer<GetAuthSessionTicketResponse> {
  HAuthTicket get authTicket => ref.authTicket;

  EResult get result => EResult.fromValue(ref.result);
}
