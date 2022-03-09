import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_market_not_allowed_reason_flags.dart";
import "../typedefs.dart";

@Packed(4)
class MarketEligibilityResponse extends Struct {
  @Bool()
  external bool allowed;

  @Int32()
  external EMarketNotAllowedReasonFlags notAllowedReason;

  @UnsignedInt()
  external RTime32 tAllowedAtTime;

  @Int()
  external int cdaySteamGuardRequiredDays;

  @Int()
  external int cdayNewDeviceCooldown;
}
