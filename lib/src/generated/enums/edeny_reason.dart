// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EDenyReasonAliasDart = int;
typedef EDenyReasonAliasC = Int32;

enum EDenyReason {
  invalid(0),
  invalidVersion(1),
  generic(2),
  notLoggedOn(3),
  noLicense(4),
  cheater(5),
  loggedInElseWhere(6),
  unknownText(7),
  incompatibleAnticheat(8),
  memoryCorruption(9),
  incompatibleSoftware(10),
  steamConnectionLost(11),
  steamConnectionError(12),
  steamResponseTimedOut(13),
  steamValidationStalled(14),
  steamOwnerLeftGuestUser(15),
  ;

  final int value;

  const EDenyReason(this.value);

  factory EDenyReason.fromValue(int value) {
    switch (value) {
      case 0:
        return EDenyReason.invalid;
      case 1:
        return EDenyReason.invalidVersion;
      case 2:
        return EDenyReason.generic;
      case 3:
        return EDenyReason.notLoggedOn;
      case 4:
        return EDenyReason.noLicense;
      case 5:
        return EDenyReason.cheater;
      case 6:
        return EDenyReason.loggedInElseWhere;
      case 7:
        return EDenyReason.unknownText;
      case 8:
        return EDenyReason.incompatibleAnticheat;
      case 9:
        return EDenyReason.memoryCorruption;
      case 10:
        return EDenyReason.incompatibleSoftware;
      case 11:
        return EDenyReason.steamConnectionLost;
      case 12:
        return EDenyReason.steamConnectionError;
      case 13:
        return EDenyReason.steamResponseTimedOut;
      case 14:
        return EDenyReason.steamValidationStalled;
      case 15:
        return EDenyReason.steamOwnerLeftGuestUser;
      default:
        throw "Unknown value for 'EDenyReason'. The value was: '$value'";
    }
  }
}
