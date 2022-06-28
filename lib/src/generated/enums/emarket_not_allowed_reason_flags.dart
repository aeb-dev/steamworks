// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EMarketNotAllowedReasonFlagsAliasDart = int;
typedef EMarketNotAllowedReasonFlagsAliasC = Int32;

enum EMarketNotAllowedReasonFlags {
  none(0),
  temporaryFailure(1),
  accountDisabled(2),
  accountLockedDown(4),
  accountLimited(8),
  tradeBanned(16),
  accountNotTrusted(32),
  steamGuardNotEnabled(64),
  steamGuardOnlyRecentlyEnabled(128),
  recentPasswordReset(256),
  newPaymentMethod(512),
  invalidCookie(1024),
  usingNewDevice(2048),
  recentSelfRefund(4096),
  newPaymentMethodCannotBeVerified(8192),
  noRecentPurchases(16384),
  acceptedWalletGift(32768),
  ;

  final int value;

  const EMarketNotAllowedReasonFlags(this.value);

  factory EMarketNotAllowedReasonFlags.fromValue(int value) {
    switch (value) {
      case 0:
        return EMarketNotAllowedReasonFlags.none;
      case 1:
        return EMarketNotAllowedReasonFlags.temporaryFailure;
      case 2:
        return EMarketNotAllowedReasonFlags.accountDisabled;
      case 4:
        return EMarketNotAllowedReasonFlags.accountLockedDown;
      case 8:
        return EMarketNotAllowedReasonFlags.accountLimited;
      case 16:
        return EMarketNotAllowedReasonFlags.tradeBanned;
      case 32:
        return EMarketNotAllowedReasonFlags.accountNotTrusted;
      case 64:
        return EMarketNotAllowedReasonFlags.steamGuardNotEnabled;
      case 128:
        return EMarketNotAllowedReasonFlags.steamGuardOnlyRecentlyEnabled;
      case 256:
        return EMarketNotAllowedReasonFlags.recentPasswordReset;
      case 512:
        return EMarketNotAllowedReasonFlags.newPaymentMethod;
      case 1024:
        return EMarketNotAllowedReasonFlags.invalidCookie;
      case 2048:
        return EMarketNotAllowedReasonFlags.usingNewDevice;
      case 4096:
        return EMarketNotAllowedReasonFlags.recentSelfRefund;
      case 8192:
        return EMarketNotAllowedReasonFlags.newPaymentMethodCannotBeVerified;
      case 16384:
        return EMarketNotAllowedReasonFlags.noRecentPurchases;
      case 32768:
        return EMarketNotAllowedReasonFlags.acceptedWalletGift;
      default:
        throw "Unknown value for 'EMarketNotAllowedReasonFlags'. The value was: '$value'";
    }
  }
}
