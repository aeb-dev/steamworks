// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/emarket_not_allowed_reason_flags.dart";
import "../typedefs.dart";

@Packed(8)
class MarketEligibilityResponse extends Struct {
  static int get callbackId => 166;

  @Bool()
  external bool allowed;

  @Int32()
  external EMarketNotAllowedReasonFlagsAliasDart notAllowedReason;

  @UnsignedInt()
  external RTime32 allowedAtTime;

  @Int()
  external int steamGuardRequiredDays;

  @Int()
  external int newDeviceCooldown;
}

extension MarketEligibilityResponseExtensions
    on Pointer<MarketEligibilityResponse> {
  bool get allowed => ref.allowed;

  EMarketNotAllowedReasonFlags get notAllowedReason =>
      EMarketNotAllowedReasonFlags.fromValue(ref.notAllowedReason);

  RTime32 get allowedAtTime => ref.allowedAtTime;

  int get steamGuardRequiredDays => ref.steamGuardRequiredDays;

  int get newDeviceCooldown => ref.newDeviceCooldown;
}
