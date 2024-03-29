// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../dl.dart";
import "../enums/eparental_feature.dart";
import "../typedefs.dart";

final _steamParentalSettings = dl.lookupFunction<
    Pointer<ISteamParentalSettings> Function(),
    Pointer<ISteamParentalSettings>
        Function()>("SteamAPI_SteamParentalSettings_v001");

final class ISteamParentalSettings extends Opaque {
  static Pointer<ISteamParentalSettings> get userInstance =>
      _steamParentalSettings();
}

final _isParentalLockEnabled = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamParentalSettings>,
    ),
    bool Function(
      Pointer<ISteamParentalSettings>,
    )>("SteamAPI_ISteamParentalSettings_BIsParentalLockEnabled");

final _isParentalLockLocked = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamParentalSettings>,
    ),
    bool Function(
      Pointer<ISteamParentalSettings>,
    )>("SteamAPI_ISteamParentalSettings_BIsParentalLockLocked");

final _isAppBlocked = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamParentalSettings>,
      UnsignedInt,
    ),
    bool Function(
      Pointer<ISteamParentalSettings>,
      AppId,
    )>("SteamAPI_ISteamParentalSettings_BIsAppBlocked");

final _isAppInBlockList = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamParentalSettings>,
      UnsignedInt,
    ),
    bool Function(
      Pointer<ISteamParentalSettings>,
      AppId,
    )>("SteamAPI_ISteamParentalSettings_BIsAppInBlockList");

final _isFeatureBlocked = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamParentalSettings>,
      EParentalFeatureAliasC,
    ),
    bool Function(
      Pointer<ISteamParentalSettings>,
      EParentalFeatureAliasDart,
    )>("SteamAPI_ISteamParentalSettings_BIsFeatureBlocked");

final _isFeatureInBlockList = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamParentalSettings>,
      EParentalFeatureAliasC,
    ),
    bool Function(
      Pointer<ISteamParentalSettings>,
      EParentalFeatureAliasDart,
    )>("SteamAPI_ISteamParentalSettings_BIsFeatureInBlockList");

extension ISteamParentalSettingsExtensions on Pointer<ISteamParentalSettings> {
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
        feature.value,
      );

  bool isFeatureInBlockList(
    EParentalFeature feature,
  ) =>
      _isFeatureInBlockList.call(
        this,
        feature.value,
      );
}
