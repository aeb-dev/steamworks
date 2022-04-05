// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";
import "../typedefs.dart";

final _steamGameServerStats = dl.lookupFunction<
    Pointer<ISteamGameServerStats> Function(),
    Pointer<ISteamGameServerStats>
        Function()>("SteamAPI_SteamGameServerStats_v001");

class ISteamGameServerStats extends Opaque {
  static Pointer<ISteamGameServerStats> get serverInstance =>
      _steamGameServerStats();
}

final _requestUserStats = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
)>("SteamAPI_ISteamGameServerStats_RequestUserStats");

final _getUserStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Int>,
)>("SteamAPI_ISteamGameServerStats_GetUserStatInt32");

final _getUserStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Float>,
),
    bool Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Float>,
)>("SteamAPI_ISteamGameServerStats_GetUserStatFloat");

final _getUserAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Bool>,
),
    bool Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Bool>,
)>("SteamAPI_ISteamGameServerStats_GetUserAchievement");

final _setUserStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamGameServerStats_SetUserStatInt32");

final _setUserStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Float,
),
    bool Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  double,
)>("SteamAPI_ISteamGameServerStats_SetUserStatFloat");

final _updateUserAvgRateStat = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Float,
  Double,
),
    bool Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
  double,
  double,
)>("SteamAPI_ISteamGameServerStats_UpdateUserAvgRateStat");

final _setUserAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServerStats_SetUserAchievement");

final _clearUserAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamGameServerStats_ClearUserAchievement");

final _storeUserStats = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamGameServerStats>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamGameServerStats>,
  CSteamId,
)>("SteamAPI_ISteamGameServerStats_StoreUserStats");

extension ISteamGameServerStatsExtensions on Pointer<ISteamGameServerStats> {
  SteamApiCall requestUserStats(
    CSteamId steamIdUser,
  ) =>
      _requestUserStats.call(
        this,
        steamIdUser,
      );

  bool getUserStatInt32(
    CSteamId steamIdUser,
    Pointer<Utf8> name,
    Pointer<Int> pData,
  ) =>
      _getUserStatInt32.call(
        this,
        steamIdUser,
        name,
        pData,
      );

  bool getUserStatFloat(
    CSteamId steamIdUser,
    Pointer<Utf8> name,
    Pointer<Float> pData,
  ) =>
      _getUserStatFloat.call(
        this,
        steamIdUser,
        name,
        pData,
      );

  bool getUserAchievement(
    CSteamId steamIdUser,
    Pointer<Utf8> name,
    Pointer<Bool> pbAchieved,
  ) =>
      _getUserAchievement.call(
        this,
        steamIdUser,
        name,
        pbAchieved,
      );

  bool setUserStatInt32(
    CSteamId steamIdUser,
    Pointer<Utf8> name,
    int nData,
  ) =>
      _setUserStatInt32.call(
        this,
        steamIdUser,
        name,
        nData,
      );

  bool setUserStatFloat(
    CSteamId steamIdUser,
    Pointer<Utf8> name,
    double fData,
  ) =>
      _setUserStatFloat.call(
        this,
        steamIdUser,
        name,
        fData,
      );

  bool updateUserAvgRateStat(
    CSteamId steamIdUser,
    Pointer<Utf8> name,
    double countThisSession,
    double dSessionLength,
  ) =>
      _updateUserAvgRateStat.call(
        this,
        steamIdUser,
        name,
        countThisSession,
        dSessionLength,
      );

  bool setUserAchievement(
    CSteamId steamIdUser,
    Pointer<Utf8> name,
  ) =>
      _setUserAchievement.call(
        this,
        steamIdUser,
        name,
      );

  bool clearUserAchievement(
    CSteamId steamIdUser,
    Pointer<Utf8> name,
  ) =>
      _clearUserAchievement.call(
        this,
        steamIdUser,
        name,
      );

  SteamApiCall storeUserStats(
    CSteamId steamIdUser,
  ) =>
      _storeUserStats.call(
        this,
        steamIdUser,
      );
}
