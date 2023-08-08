// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
final class GetTicketForWebApiResponse extends Struct {
  static int get callbackId => 168;

  @UnsignedInt()
  external HAuthTicket authTicket;

  @Int32()
  external EResultAliasDart result;

  @Int()
  external int ticket;

  @Array<UnsignedChar>(2560)
  external Array<UnsignedChar> ticketAsArray;
}

extension GetTicketForWebApiResponseExtensions
    on Pointer<GetTicketForWebApiResponse> {
  HAuthTicket get authTicket => ref.authTicket;

  EResult get result => EResult.fromValue(ref.result);

  int get ticket => ref.ticket;

  Array<UnsignedChar> get ticketAsArray => ref.ticketAsArray;
}
