// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EResultAliasDart = int;
typedef EResultAliasC = Int32;

enum EResult {
  eResultNone(0),
  eResultOK(1),
  eResultFail(2),
  eResultNoConnection(3),
  eResultInvalidPassword(5),
  eResultLoggedInElsewhere(6),
  eResultInvalidProtocolVer(7),
  eResultInvalidParam(8),
  eResultFileNotFound(9),
  eResultBusy(10),
  eResultInvalidState(11),
  eResultInvalidName(12),
  eResultInvalidEmail(13),
  eResultDuplicateName(14),
  eResultAccessDenied(15),
  eResultTimeout(16),
  eResultBanned(17),
  eResultAccountNotFound(18),
  eResultInvalidSteamId(19),
  eResultServiceUnavailable(20),
  eResultNotLoggedOn(21),
  eResultPending(22),
  eResultEncryptionFailure(23),
  eResultInsufficientPrivilege(24),
  eResultLimitExceeded(25),
  eResultRevoked(26),
  eResultExpired(27),
  eResultAlreadyRedeemed(28),
  eResultDuplicateRequest(29),
  eResultAlreadyOwned(30),
  eResultIpNotFound(31),
  eResultPersistFailed(32),
  eResultLockingFailed(33),
  eResultLogonSessionReplaced(34),
  eResultConnectFailed(35),
  eResultHandshakeFailed(36),
  eResultIOFailure(37),
  eResultRemoteDisconnect(38),
  eResultShoppingCartNotFound(39),
  eResultBlocked(40),
  eResultIgnored(41),
  eResultNoMatch(42),
  eResultAccountDisabled(43),
  eResultServiceReadOnly(44),
  eResultAccountNotFeatured(45),
  eResultAdministratorOK(46),
  eResultContentVersion(47),
  eResultTryAnotherCM(48),
  eResultPasswordRequiredToKickSession(49),
  eResultAlreadyLoggedInElsewhere(50),
  eResultSuspended(51),
  eResultCancelled(52),
  eResultDataCorruption(53),
  eResultDiskFull(54),
  eResultRemoteCallFailed(55),
  eResultPasswordUnset(56),
  eResultExternalAccountUnlinked(57),
  eResultPsnTicketInvalid(58),
  eResultExternalAccountAlreadyLinked(59),
  eResultRemoteFileConflict(60),
  eResultIllegalPassword(61),
  eResultSameAsPreviousValue(62),
  eResultAccountLogonDenied(63),
  eResultCannotUseOldPassword(64),
  eResultInvalidLoginAuthCode(65),
  eResultAccountLogonDeniedNoMail(66),
  eResultHardwareNotCapableOfIpT(67),
  eResultIpTInitError(68),
  eResultParentalControlRestricted(69),
  eResultFacebookQueryError(70),
  eResultExpiredLoginAuthCode(71),
  eResultIpLoginRestrictionFailed(72),
  eResultAccountLockedDown(73),
  eResultAccountLogonDeniedVerifiedEmailRequired(74),
  eResultNoMatchingUrl(75),
  eResultBadResponse(76),
  eResultRequirePasswordReEntry(77),
  eResultValueOutOfRange(78),
  eResultUnexpectedError(79),
  eResultDisabled(80),
  eResultInvalidCegsubmission(81),
  eResultRestrictedDevice(82),
  eResultRegionLocked(83),
  eResultRateLimitExceeded(84),
  eResultAccountLoginDeniedNeedTwoFactor(85),
  eResultItemDeleted(86),
  eResultAccountLoginDeniedThrottle(87),
  eResultTwoFactorCodeMismatch(88),
  eResultTwoFactorActivationCodeMismatch(89),
  eResultAccountAssociatedToMultiplePartners(90),
  eResultNotModified(91),
  eResultNoMobileDevice(92),
  eResultTimeNotSynced(93),
  eResultSmsCodeFailed(94),
  eResultAccountLimitExceeded(95),
  eResultAccountActivityLimitExceeded(96),
  eResultPhoneActivityLimitExceeded(97),
  eResultRefundToWallet(98),
  eResultEmailSendFailure(99),
  eResultNotSettled(100),
  eResultNeedCaptcha(101),
  eResultGsLTDenied(102),
  eResultGsOwnerDenied(103),
  eResultInvalidItemType(104),
  eResultIpBanned(105),
  eResultGsLTExpired(106),
  eResultInsufficientFunds(107),
  eResultTooManyPending(108),
  eResultNoSiteLicensesFound(109),
  eResultWGNetworkSendExceeded(110),
  eResultAccountNotFriends(111),
  eResultLimitedUserAccount(112),
  eResultCantRemoveItem(113),
  eResultAccountDeleted(114),
  eResultExistingUserCancelledLicense(115),
  eResultCommunityCooldown(116),
  eResultNoLauncherSpecified(117),
  eResultMustAgreeToSsa(118),
  eResultLauncherMigrated(119),
  eResultSteamRealmMismatch(120),
  eResultInvalidSignature(121),
  eResultParseFailure(122),
  eResultNoVerifiedPhone(123),
  eResultInsufficientBattery(124),
  eResultChargerRequired(125),
  eResultCachedCredentialInvalid(126),
  kEResultPhoneNumberIsVOIp(127),
  ;

  final int value;

  const EResult(this.value);

  factory EResult.fromValue(int value) {
    switch (value) {
      case 0:
        return EResult.eResultNone;
      case 1:
        return EResult.eResultOK;
      case 2:
        return EResult.eResultFail;
      case 3:
        return EResult.eResultNoConnection;
      case 5:
        return EResult.eResultInvalidPassword;
      case 6:
        return EResult.eResultLoggedInElsewhere;
      case 7:
        return EResult.eResultInvalidProtocolVer;
      case 8:
        return EResult.eResultInvalidParam;
      case 9:
        return EResult.eResultFileNotFound;
      case 10:
        return EResult.eResultBusy;
      case 11:
        return EResult.eResultInvalidState;
      case 12:
        return EResult.eResultInvalidName;
      case 13:
        return EResult.eResultInvalidEmail;
      case 14:
        return EResult.eResultDuplicateName;
      case 15:
        return EResult.eResultAccessDenied;
      case 16:
        return EResult.eResultTimeout;
      case 17:
        return EResult.eResultBanned;
      case 18:
        return EResult.eResultAccountNotFound;
      case 19:
        return EResult.eResultInvalidSteamId;
      case 20:
        return EResult.eResultServiceUnavailable;
      case 21:
        return EResult.eResultNotLoggedOn;
      case 22:
        return EResult.eResultPending;
      case 23:
        return EResult.eResultEncryptionFailure;
      case 24:
        return EResult.eResultInsufficientPrivilege;
      case 25:
        return EResult.eResultLimitExceeded;
      case 26:
        return EResult.eResultRevoked;
      case 27:
        return EResult.eResultExpired;
      case 28:
        return EResult.eResultAlreadyRedeemed;
      case 29:
        return EResult.eResultDuplicateRequest;
      case 30:
        return EResult.eResultAlreadyOwned;
      case 31:
        return EResult.eResultIpNotFound;
      case 32:
        return EResult.eResultPersistFailed;
      case 33:
        return EResult.eResultLockingFailed;
      case 34:
        return EResult.eResultLogonSessionReplaced;
      case 35:
        return EResult.eResultConnectFailed;
      case 36:
        return EResult.eResultHandshakeFailed;
      case 37:
        return EResult.eResultIOFailure;
      case 38:
        return EResult.eResultRemoteDisconnect;
      case 39:
        return EResult.eResultShoppingCartNotFound;
      case 40:
        return EResult.eResultBlocked;
      case 41:
        return EResult.eResultIgnored;
      case 42:
        return EResult.eResultNoMatch;
      case 43:
        return EResult.eResultAccountDisabled;
      case 44:
        return EResult.eResultServiceReadOnly;
      case 45:
        return EResult.eResultAccountNotFeatured;
      case 46:
        return EResult.eResultAdministratorOK;
      case 47:
        return EResult.eResultContentVersion;
      case 48:
        return EResult.eResultTryAnotherCM;
      case 49:
        return EResult.eResultPasswordRequiredToKickSession;
      case 50:
        return EResult.eResultAlreadyLoggedInElsewhere;
      case 51:
        return EResult.eResultSuspended;
      case 52:
        return EResult.eResultCancelled;
      case 53:
        return EResult.eResultDataCorruption;
      case 54:
        return EResult.eResultDiskFull;
      case 55:
        return EResult.eResultRemoteCallFailed;
      case 56:
        return EResult.eResultPasswordUnset;
      case 57:
        return EResult.eResultExternalAccountUnlinked;
      case 58:
        return EResult.eResultPsnTicketInvalid;
      case 59:
        return EResult.eResultExternalAccountAlreadyLinked;
      case 60:
        return EResult.eResultRemoteFileConflict;
      case 61:
        return EResult.eResultIllegalPassword;
      case 62:
        return EResult.eResultSameAsPreviousValue;
      case 63:
        return EResult.eResultAccountLogonDenied;
      case 64:
        return EResult.eResultCannotUseOldPassword;
      case 65:
        return EResult.eResultInvalidLoginAuthCode;
      case 66:
        return EResult.eResultAccountLogonDeniedNoMail;
      case 67:
        return EResult.eResultHardwareNotCapableOfIpT;
      case 68:
        return EResult.eResultIpTInitError;
      case 69:
        return EResult.eResultParentalControlRestricted;
      case 70:
        return EResult.eResultFacebookQueryError;
      case 71:
        return EResult.eResultExpiredLoginAuthCode;
      case 72:
        return EResult.eResultIpLoginRestrictionFailed;
      case 73:
        return EResult.eResultAccountLockedDown;
      case 74:
        return EResult.eResultAccountLogonDeniedVerifiedEmailRequired;
      case 75:
        return EResult.eResultNoMatchingUrl;
      case 76:
        return EResult.eResultBadResponse;
      case 77:
        return EResult.eResultRequirePasswordReEntry;
      case 78:
        return EResult.eResultValueOutOfRange;
      case 79:
        return EResult.eResultUnexpectedError;
      case 80:
        return EResult.eResultDisabled;
      case 81:
        return EResult.eResultInvalidCegsubmission;
      case 82:
        return EResult.eResultRestrictedDevice;
      case 83:
        return EResult.eResultRegionLocked;
      case 84:
        return EResult.eResultRateLimitExceeded;
      case 85:
        return EResult.eResultAccountLoginDeniedNeedTwoFactor;
      case 86:
        return EResult.eResultItemDeleted;
      case 87:
        return EResult.eResultAccountLoginDeniedThrottle;
      case 88:
        return EResult.eResultTwoFactorCodeMismatch;
      case 89:
        return EResult.eResultTwoFactorActivationCodeMismatch;
      case 90:
        return EResult.eResultAccountAssociatedToMultiplePartners;
      case 91:
        return EResult.eResultNotModified;
      case 92:
        return EResult.eResultNoMobileDevice;
      case 93:
        return EResult.eResultTimeNotSynced;
      case 94:
        return EResult.eResultSmsCodeFailed;
      case 95:
        return EResult.eResultAccountLimitExceeded;
      case 96:
        return EResult.eResultAccountActivityLimitExceeded;
      case 97:
        return EResult.eResultPhoneActivityLimitExceeded;
      case 98:
        return EResult.eResultRefundToWallet;
      case 99:
        return EResult.eResultEmailSendFailure;
      case 100:
        return EResult.eResultNotSettled;
      case 101:
        return EResult.eResultNeedCaptcha;
      case 102:
        return EResult.eResultGsLTDenied;
      case 103:
        return EResult.eResultGsOwnerDenied;
      case 104:
        return EResult.eResultInvalidItemType;
      case 105:
        return EResult.eResultIpBanned;
      case 106:
        return EResult.eResultGsLTExpired;
      case 107:
        return EResult.eResultInsufficientFunds;
      case 108:
        return EResult.eResultTooManyPending;
      case 109:
        return EResult.eResultNoSiteLicensesFound;
      case 110:
        return EResult.eResultWGNetworkSendExceeded;
      case 111:
        return EResult.eResultAccountNotFriends;
      case 112:
        return EResult.eResultLimitedUserAccount;
      case 113:
        return EResult.eResultCantRemoveItem;
      case 114:
        return EResult.eResultAccountDeleted;
      case 115:
        return EResult.eResultExistingUserCancelledLicense;
      case 116:
        return EResult.eResultCommunityCooldown;
      case 117:
        return EResult.eResultNoLauncherSpecified;
      case 118:
        return EResult.eResultMustAgreeToSsa;
      case 119:
        return EResult.eResultLauncherMigrated;
      case 120:
        return EResult.eResultSteamRealmMismatch;
      case 121:
        return EResult.eResultInvalidSignature;
      case 122:
        return EResult.eResultParseFailure;
      case 123:
        return EResult.eResultNoVerifiedPhone;
      case 124:
        return EResult.eResultInsufficientBattery;
      case 125:
        return EResult.eResultChargerRequired;
      case 126:
        return EResult.eResultCachedCredentialInvalid;
      case 127:
        return EResult.kEResultPhoneNumberIsVOIp;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EResult'. The value was: '$value'",
        );
    }
  }
}
