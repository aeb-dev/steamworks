import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../typedefs.dart";

class SteamGameServerStats extends Opaque {
  static Pointer<SteamGameServerStats> steamGameServerStats() => nullptr;
}

final _requestUserStats = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
)>("SteamAPI_ISteamGameServerStats_RequestUserStats");

final _getUserStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Int>,
)>("SteamAPI_ISteamGameServerStats_GetUserStatInt32");

final _getUserStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Float>,
),
    bool Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Float>,
)>("SteamAPI_ISteamGameServerStats_GetUserStatFloat");

final _getUserAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Bool>,
),
    bool Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Bool>,
)>("SteamAPI_ISteamGameServerStats_GetUserAchievement");

final _setUserStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamGameServerStats_SetUserStatInt32");

final _setUserStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Float,
),
    bool Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  double,
)>("SteamAPI_ISteamGameServerStats_SetUserStatFloat");

final _updateUserAvgRateStat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Float,
  Double,
),
    bool Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  double,
  double,
)>("SteamAPI_ISteamGameServerStats_UpdateUserAvgRateStat");

final _setUserAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServerStats_SetUserAchievement");

final _clearUserAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServerStats_ClearUserAchievement");

final _storeUserStats = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamGameServerStats>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamGameServerStats>,
  CSteamId,
)>("SteamAPI_ISteamGameServerStats_StoreUserStats");

extension SteamGameServerStatsExtensions on Pointer<SteamGameServerStats> {
  SteamApiCall requestUserStats(
    CSteamId steamIDUser,
  ) =>
      _requestUserStats.call(
        this,
        steamIDUser,
      );

  bool getUserStatInt32(
    CSteamId steamIDUser,
    Pointer<Utf8> pchName,
    Pointer<Int> pData,
  ) =>
      _getUserStatInt32.call(
        this,
        steamIDUser,
        pchName,
        pData,
      );

  bool getUserStatFloat(
    CSteamId steamIDUser,
    Pointer<Utf8> pchName,
    Pointer<Float> pData,
  ) =>
      _getUserStatFloat.call(
        this,
        steamIDUser,
        pchName,
        pData,
      );

  bool getUserAchievement(
    CSteamId steamIDUser,
    Pointer<Utf8> pchName,
    Pointer<Bool> pbAchieved,
  ) =>
      _getUserAchievement.call(
        this,
        steamIDUser,
        pchName,
        pbAchieved,
      );

  bool setUserStatInt32(
    CSteamId steamIDUser,
    Pointer<Utf8> pchName,
    int nData,
  ) =>
      _setUserStatInt32.call(
        this,
        steamIDUser,
        pchName,
        nData,
      );

  bool setUserStatFloat(
    CSteamId steamIDUser,
    Pointer<Utf8> pchName,
    double fData,
  ) =>
      _setUserStatFloat.call(
        this,
        steamIDUser,
        pchName,
        fData,
      );

  bool updateUserAvgRateStat(
    CSteamId steamIDUser,
    Pointer<Utf8> pchName,
    double flCountThisSession,
    double dSessionLength,
  ) =>
      _updateUserAvgRateStat.call(
        this,
        steamIDUser,
        pchName,
        flCountThisSession,
        dSessionLength,
      );

  bool setUserAchievement(
    CSteamId steamIDUser,
    Pointer<Utf8> pchName,
  ) =>
      _setUserAchievement.call(
        this,
        steamIDUser,
        pchName,
      );

  bool clearUserAchievement(
    CSteamId steamIDUser,
    Pointer<Utf8> pchName,
  ) =>
      _clearUserAchievement.call(
        this,
        steamIDUser,
        pchName,
      );

  SteamApiCall storeUserStats(
    CSteamId steamIDUser,
  ) =>
      _storeUserStats.call(
        this,
        steamIDUser,
      );
}
