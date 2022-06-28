// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EResultAliasDart = int;
typedef EResultAliasC = Int32;

enum EResult {
  none(0),
  ok(1),
  fail(2),
  noConnection(3),
  invalidPassword(5),
  loggedInElsewhere(6),
  invalidProtocolVer(7),
  invalidParam(8),
  fileNotFound(9),
  busy(10),
  invalidState(11),
  invalidName(12),
  invalidEmail(13),
  duplicateName(14),
  accessDenied(15),
  timeout(16),
  banned(17),
  accountNotFound(18),
  invalidSteamId(19),
  serviceUnavailable(20),
  notLoggedOn(21),
  pending(22),
  encryptionFailure(23),
  insufficientPrivilege(24),
  limitExceeded(25),
  revoked(26),
  expired(27),
  alreadyRedeemed(28),
  duplicateRequest(29),
  alreadyOwned(30),
  ipNotFound(31),
  persistFailed(32),
  lockingFailed(33),
  logonSessionReplaced(34),
  connectFailed(35),
  handshakeFailed(36),
  iOFailure(37),
  remoteDisconnect(38),
  shoppingCartNotFound(39),
  blocked(40),
  ignored(41),
  noMatch(42),
  accountDisabled(43),
  serviceReadOnly(44),
  accountNotFeatured(45),
  administratorOK(46),
  contentVersion(47),
  tryAnotherCM(48),
  passwordRequiredToKickSession(49),
  alreadyLoggedInElsewhere(50),
  suspended(51),
  cancelled(52),
  dataCorruption(53),
  diskFull(54),
  remoteCallFailed(55),
  passwordUnset(56),
  externalAccountUnlinked(57),
  psnTicketInvalid(58),
  externalAccountAlreadyLinked(59),
  remoteFileConflict(60),
  illegalPassword(61),
  sameAsPreviousValue(62),
  accountLogonDenied(63),
  cannotUseOldPassword(64),
  invalidLoginAuthCode(65),
  accountLogonDeniedNoMail(66),
  hardwareNotCapableOfIpT(67),
  ipTInitError(68),
  parentalControlRestricted(69),
  facebookQueryError(70),
  expiredLoginAuthCode(71),
  ipLoginRestrictionFailed(72),
  accountLockedDown(73),
  accountLogonDeniedVerifiedEmailRequired(74),
  noMatchingUrl(75),
  badResponse(76),
  requirePasswordReEntry(77),
  valueOutOfRange(78),
  unexpectedError(79),
  disabled(80),
  invalidCegsubmission(81),
  restrictedDevice(82),
  regionLocked(83),
  rateLimitExceeded(84),
  accountLoginDeniedNeedTwoFactor(85),
  itemDeleted(86),
  accountLoginDeniedThrottle(87),
  twoFactorCodeMismatch(88),
  twoFactorActivationCodeMismatch(89),
  accountAssociatedToMultiplePartners(90),
  notModified(91),
  noMobileDevice(92),
  timeNotSynced(93),
  smsCodeFailed(94),
  accountLimitExceeded(95),
  accountActivityLimitExceeded(96),
  phoneActivityLimitExceeded(97),
  refundToWallet(98),
  emailSendFailure(99),
  notSettled(100),
  needCaptcha(101),
  gsLTDenied(102),
  gsOwnerDenied(103),
  invalidItemType(104),
  ipBanned(105),
  gsLTExpired(106),
  insufficientFunds(107),
  tooManyPending(108),
  noSiteLicensesFound(109),
  wGNetworkSendExceeded(110),
  accountNotFriends(111),
  limitedUserAccount(112),
  cantRemoveItem(113),
  accountDeleted(114),
  existingUserCancelledLicense(115),
  communityCooldown(116),
  noLauncherSpecified(117),
  mustAgreeToSsa(118),
  launcherMigrated(119),
  steamRealmMismatch(120),
  invalidSignature(121),
  parseFailure(122),
  noVerifiedPhone(123),
  ;

  final int value;

  const EResult(this.value);

  factory EResult.fromValue(int value) {
    switch (value) {
      case 0:
        return EResult.none;
      case 1:
        return EResult.ok;
      case 2:
        return EResult.fail;
      case 3:
        return EResult.noConnection;
      case 5:
        return EResult.invalidPassword;
      case 6:
        return EResult.loggedInElsewhere;
      case 7:
        return EResult.invalidProtocolVer;
      case 8:
        return EResult.invalidParam;
      case 9:
        return EResult.fileNotFound;
      case 10:
        return EResult.busy;
      case 11:
        return EResult.invalidState;
      case 12:
        return EResult.invalidName;
      case 13:
        return EResult.invalidEmail;
      case 14:
        return EResult.duplicateName;
      case 15:
        return EResult.accessDenied;
      case 16:
        return EResult.timeout;
      case 17:
        return EResult.banned;
      case 18:
        return EResult.accountNotFound;
      case 19:
        return EResult.invalidSteamId;
      case 20:
        return EResult.serviceUnavailable;
      case 21:
        return EResult.notLoggedOn;
      case 22:
        return EResult.pending;
      case 23:
        return EResult.encryptionFailure;
      case 24:
        return EResult.insufficientPrivilege;
      case 25:
        return EResult.limitExceeded;
      case 26:
        return EResult.revoked;
      case 27:
        return EResult.expired;
      case 28:
        return EResult.alreadyRedeemed;
      case 29:
        return EResult.duplicateRequest;
      case 30:
        return EResult.alreadyOwned;
      case 31:
        return EResult.ipNotFound;
      case 32:
        return EResult.persistFailed;
      case 33:
        return EResult.lockingFailed;
      case 34:
        return EResult.logonSessionReplaced;
      case 35:
        return EResult.connectFailed;
      case 36:
        return EResult.handshakeFailed;
      case 37:
        return EResult.iOFailure;
      case 38:
        return EResult.remoteDisconnect;
      case 39:
        return EResult.shoppingCartNotFound;
      case 40:
        return EResult.blocked;
      case 41:
        return EResult.ignored;
      case 42:
        return EResult.noMatch;
      case 43:
        return EResult.accountDisabled;
      case 44:
        return EResult.serviceReadOnly;
      case 45:
        return EResult.accountNotFeatured;
      case 46:
        return EResult.administratorOK;
      case 47:
        return EResult.contentVersion;
      case 48:
        return EResult.tryAnotherCM;
      case 49:
        return EResult.passwordRequiredToKickSession;
      case 50:
        return EResult.alreadyLoggedInElsewhere;
      case 51:
        return EResult.suspended;
      case 52:
        return EResult.cancelled;
      case 53:
        return EResult.dataCorruption;
      case 54:
        return EResult.diskFull;
      case 55:
        return EResult.remoteCallFailed;
      case 56:
        return EResult.passwordUnset;
      case 57:
        return EResult.externalAccountUnlinked;
      case 58:
        return EResult.psnTicketInvalid;
      case 59:
        return EResult.externalAccountAlreadyLinked;
      case 60:
        return EResult.remoteFileConflict;
      case 61:
        return EResult.illegalPassword;
      case 62:
        return EResult.sameAsPreviousValue;
      case 63:
        return EResult.accountLogonDenied;
      case 64:
        return EResult.cannotUseOldPassword;
      case 65:
        return EResult.invalidLoginAuthCode;
      case 66:
        return EResult.accountLogonDeniedNoMail;
      case 67:
        return EResult.hardwareNotCapableOfIpT;
      case 68:
        return EResult.ipTInitError;
      case 69:
        return EResult.parentalControlRestricted;
      case 70:
        return EResult.facebookQueryError;
      case 71:
        return EResult.expiredLoginAuthCode;
      case 72:
        return EResult.ipLoginRestrictionFailed;
      case 73:
        return EResult.accountLockedDown;
      case 74:
        return EResult.accountLogonDeniedVerifiedEmailRequired;
      case 75:
        return EResult.noMatchingUrl;
      case 76:
        return EResult.badResponse;
      case 77:
        return EResult.requirePasswordReEntry;
      case 78:
        return EResult.valueOutOfRange;
      case 79:
        return EResult.unexpectedError;
      case 80:
        return EResult.disabled;
      case 81:
        return EResult.invalidCegsubmission;
      case 82:
        return EResult.restrictedDevice;
      case 83:
        return EResult.regionLocked;
      case 84:
        return EResult.rateLimitExceeded;
      case 85:
        return EResult.accountLoginDeniedNeedTwoFactor;
      case 86:
        return EResult.itemDeleted;
      case 87:
        return EResult.accountLoginDeniedThrottle;
      case 88:
        return EResult.twoFactorCodeMismatch;
      case 89:
        return EResult.twoFactorActivationCodeMismatch;
      case 90:
        return EResult.accountAssociatedToMultiplePartners;
      case 91:
        return EResult.notModified;
      case 92:
        return EResult.noMobileDevice;
      case 93:
        return EResult.timeNotSynced;
      case 94:
        return EResult.smsCodeFailed;
      case 95:
        return EResult.accountLimitExceeded;
      case 96:
        return EResult.accountActivityLimitExceeded;
      case 97:
        return EResult.phoneActivityLimitExceeded;
      case 98:
        return EResult.refundToWallet;
      case 99:
        return EResult.emailSendFailure;
      case 100:
        return EResult.notSettled;
      case 101:
        return EResult.needCaptcha;
      case 102:
        return EResult.gsLTDenied;
      case 103:
        return EResult.gsOwnerDenied;
      case 104:
        return EResult.invalidItemType;
      case 105:
        return EResult.ipBanned;
      case 106:
        return EResult.gsLTExpired;
      case 107:
        return EResult.insufficientFunds;
      case 108:
        return EResult.tooManyPending;
      case 109:
        return EResult.noSiteLicensesFound;
      case 110:
        return EResult.wGNetworkSendExceeded;
      case 111:
        return EResult.accountNotFriends;
      case 112:
        return EResult.limitedUserAccount;
      case 113:
        return EResult.cantRemoveItem;
      case 114:
        return EResult.accountDeleted;
      case 115:
        return EResult.existingUserCancelledLicense;
      case 116:
        return EResult.communityCooldown;
      case 117:
        return EResult.noLauncherSpecified;
      case 118:
        return EResult.mustAgreeToSsa;
      case 119:
        return EResult.launcherMigrated;
      case 120:
        return EResult.steamRealmMismatch;
      case 121:
        return EResult.invalidSignature;
      case 122:
        return EResult.parseFailure;
      case 123:
        return EResult.noVerifiedPhone;
      default:
        throw "Unknown value for 'EResult'. The value was: '$value'";
    }
  }
}
