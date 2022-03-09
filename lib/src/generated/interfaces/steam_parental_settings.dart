import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../typedefs.dart";
import "../enums/e_parental_feature.dart";

class SteamParentalSettings extends Opaque {
  static Pointer<SteamParentalSettings> steamParentalSettings() => nullptr;
}

final _bIsParentalLockEnabled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
),
    bool Function(
  Pointer<SteamParentalSettings>,
)>("SteamAPI_ISteamParentalSettings_BIsParentalLockEnabled");

final _bIsParentalLockLocked = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
),
    bool Function(
  Pointer<SteamParentalSettings>,
)>("SteamAPI_ISteamParentalSettings_BIsParentalLockLocked");

final _bIsAppBlocked = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamParentalSettings>,
  AppId,
)>("SteamAPI_ISteamParentalSettings_BIsAppBlocked");

final _bIsAppInBlockList = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamParentalSettings>,
  AppId,
)>("SteamAPI_ISteamParentalSettings_BIsAppInBlockList");

final _bIsFeatureBlocked = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
  Int32,
),
    bool Function(
  Pointer<SteamParentalSettings>,
  EParentalFeature,
)>("SteamAPI_ISteamParentalSettings_BIsFeatureBlocked");

final _bIsFeatureInBlockList = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
  Int32,
),
    bool Function(
  Pointer<SteamParentalSettings>,
  EParentalFeature,
)>("SteamAPI_ISteamParentalSettings_BIsFeatureInBlockList");

extension SteamParentalSettingsExtensions on Pointer<SteamParentalSettings> {
  bool bIsParentalLockEnabled() => _bIsParentalLockEnabled.call(
        this,
      );

  bool bIsParentalLockLocked() => _bIsParentalLockLocked.call(
        this,
      );

  bool bIsAppBlocked(
    AppId nAppID,
  ) =>
      _bIsAppBlocked.call(
        this,
        nAppID,
      );

  bool bIsAppInBlockList(
    AppId nAppID,
  ) =>
      _bIsAppInBlockList.call(
        this,
        nAppID,
      );

  bool bIsFeatureBlocked(
    EParentalFeature eFeature,
  ) =>
      _bIsFeatureBlocked.call(
        this,
        eFeature,
      );

  bool bIsFeatureInBlockList(
    EParentalFeature eFeature,
  ) =>
      _bIsFeatureInBlockList.call(
        this,
        eFeature,
      );
}
