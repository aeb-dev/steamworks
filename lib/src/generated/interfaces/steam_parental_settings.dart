import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/e_parental_feature.dart";
import "../typedefs.dart";

final _steamParentalSettings = dl.lookupFunction<
    Pointer<SteamParentalSettings> Function(),
    Pointer<SteamParentalSettings>
        Function()>("SteamAPI_SteamParentalSettings_v001");

class SteamParentalSettings extends Opaque {
  static Pointer<SteamParentalSettings> get userInstance =>
      _steamParentalSettings();
}

final _isParentalLockEnabled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
),
    bool Function(
  Pointer<SteamParentalSettings>,
)>("SteamAPI_ISteamParentalSettings_BIsParentalLockEnabled");

final _isParentalLockLocked = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
),
    bool Function(
  Pointer<SteamParentalSettings>,
)>("SteamAPI_ISteamParentalSettings_BIsParentalLockLocked");

final _isAppBlocked = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamParentalSettings>,
  AppId,
)>("SteamAPI_ISteamParentalSettings_BIsAppBlocked");

final _isAppInBlockList = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamParentalSettings>,
  AppId,
)>("SteamAPI_ISteamParentalSettings_BIsAppInBlockList");

final _isFeatureBlocked = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
  Int32,
),
    bool Function(
  Pointer<SteamParentalSettings>,
  EParentalFeature,
)>("SteamAPI_ISteamParentalSettings_BIsFeatureBlocked");

final _isFeatureInBlockList = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParentalSettings>,
  Int32,
),
    bool Function(
  Pointer<SteamParentalSettings>,
  EParentalFeature,
)>("SteamAPI_ISteamParentalSettings_BIsFeatureInBlockList");

extension SteamParentalSettingsExtensions on Pointer<SteamParentalSettings> {
  bool isParentalLockEnabled() => _isParentalLockEnabled.call(
        this,
      );

  bool isParentalLockLocked() => _isParentalLockLocked.call(
        this,
      );

  bool isAppBlocked(
    AppId nAppId,
  ) =>
      _isAppBlocked.call(
        this,
        nAppId,
      );

  bool isAppInBlockList(
    AppId nAppId,
  ) =>
      _isAppInBlockList.call(
        this,
        nAppId,
      );

  bool isFeatureBlocked(
    EParentalFeature feature,
  ) =>
      _isFeatureBlocked.call(
        this,
        feature,
      );

  bool isFeatureInBlockList(
    EParentalFeature feature,
  ) =>
      _isFeatureInBlockList.call(
        this,
        feature,
      );
}
