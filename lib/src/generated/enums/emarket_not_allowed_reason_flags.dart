// ignore_for_file: public_member_api_docs
typedef EMarketNotAllowedReasonFlags = int;

class EMarketNotAllowedReasonFlagsEnum {
  static const int none = 0;
  static const int temporaryFailure = 1;
  static const int accountDisabled = 2;
  static const int accountLockedDown = 4;
  static const int accountLimited = 8;
  static const int tradeBanned = 16;
  static const int accountNotTrusted = 32;
  static const int steamGuardNotEnabled = 64;
  static const int steamGuardOnlyRecentlyEnabled = 128;
  static const int recentPasswordReset = 256;
  static const int newPaymentMethod = 512;
  static const int invalidCookie = 1024;
  static const int usingNewDevice = 2048;
  static const int recentSelfRefund = 4096;
  static const int newPaymentMethodCannotBeVerified = 8192;
  static const int noRecentPurchases = 16384;
  static const int acceptedWalletGift = 32768;
}
