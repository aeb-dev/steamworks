import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_leaderboard_data_request.dart";
import "../enums/e_leaderboard_display_type.dart";
import "../enums/e_leaderboard_sort_method.dart";
import "../enums/e_leaderboard_upload_score_method.dart";
import "../steam_api.dart";
import "../structs/leaderboard_entry.dart";
import "../typedefs.dart";

class SteamUserStats extends Opaque {
  static Pointer<SteamUserStats> steamUserStats() => nullptr;
}

final _requestCurrentStats = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
),
    bool Function(
  Pointer<SteamUserStats>,
)>("SteamAPI_ISteamUserStats_RequestCurrentStats");

final _getStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Int>,
)>("SteamAPI_ISteamUserStats_GetStatInt32");

final _getStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
)>("SteamAPI_ISteamUserStats_GetStatFloat");

final _setStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUserStats_SetStatInt32");

final _setStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Float,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  double,
)>("SteamAPI_ISteamUserStats_SetStatFloat");

final _updateAvgRateStat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Float,
  Double,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  double,
  double,
)>("SteamAPI_ISteamUserStats_UpdateAvgRateStat");

final _getAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Bool>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Bool>,
)>("SteamAPI_ISteamUserStats_GetAchievement");

final _setAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_SetAchievement");

final _clearAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_ClearAchievement");

final _getAchievementAndUnlockTime = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Bool>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Bool>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUserStats_GetAchievementAndUnlockTime");

final _storeStats = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
),
    bool Function(
  Pointer<SteamUserStats>,
)>("SteamAPI_ISteamUserStats_StoreStats");

final _getAchievementIcon = dl.lookupFunction<
    Int Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
),
    int Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_GetAchievementIcon");

final _getAchievementDisplayAttribute = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_GetAchievementDisplayAttribute");

final _indicateAchievementProgress = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  int,
  int,
)>("SteamAPI_ISteamUserStats_IndicateAchievementProgress");

final _getNumAchievements = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUserStats>,
),
    int Function(
  Pointer<SteamUserStats>,
)>("SteamAPI_ISteamUserStats_GetNumAchievements");

final _getAchievementName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamUserStats>,
  UnsignedInt,
),
    Pointer<Utf8> Function(
  Pointer<SteamUserStats>,
  int,
)>("SteamAPI_ISteamUserStats_GetAchievementName");

final _requestUserStats = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
  CSteamId,
)>("SteamAPI_ISteamUserStats_RequestUserStats");

final _getUserStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamUserStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Int>,
)>("SteamAPI_ISteamUserStats_GetUserStatInt32");

final _getUserStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Float>,
),
    bool Function(
  Pointer<SteamUserStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Float>,
)>("SteamAPI_ISteamUserStats_GetUserStatFloat");

final _getUserAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Bool>,
),
    bool Function(
  Pointer<SteamUserStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Bool>,
)>("SteamAPI_ISteamUserStats_GetUserAchievement");

final _getUserAchievementAndUnlockTime = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Bool>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamUserStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Bool>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUserStats_GetUserAchievementAndUnlockTime");

final _resetAllStats = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Bool,
),
    bool Function(
  Pointer<SteamUserStats>,
  bool,
)>("SteamAPI_ISteamUserStats_ResetAllStats");

final _findOrCreateLeaderboard = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Int32,
  Int32,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  ELeaderboardSortMethod,
  ELeaderboardDisplayType,
)>("SteamAPI_ISteamUserStats_FindOrCreateLeaderboard");

final _findLeaderboard = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_FindLeaderboard");

final _getLeaderboardName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<SteamUserStats>,
  SteamLeaderboard,
)>("SteamAPI_ISteamUserStats_GetLeaderboardName");

final _getLeaderboardEntryCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamUserStats>,
  SteamLeaderboard,
)>("SteamAPI_ISteamUserStats_GetLeaderboardEntryCount");

final _getLeaderboardSortMethod = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
),
    ELeaderboardSortMethod Function(
  Pointer<SteamUserStats>,
  SteamLeaderboard,
)>("SteamAPI_ISteamUserStats_GetLeaderboardSortMethod");

final _getLeaderboardDisplayType = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
),
    ELeaderboardDisplayType Function(
  Pointer<SteamUserStats>,
  SteamLeaderboard,
)>("SteamAPI_ISteamUserStats_GetLeaderboardDisplayType");

final _downloadLeaderboardEntries = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
  Int32,
  Int,
  Int,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
  SteamLeaderboard,
  ELeaderboardDataRequest,
  int,
  int,
)>("SteamAPI_ISteamUserStats_DownloadLeaderboardEntries");

final _downloadLeaderboardEntriesForUsers = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Int,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
  SteamLeaderboard,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUserStats_DownloadLeaderboardEntriesForUsers");

final _getDownloadedLeaderboardEntry = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
  Int,
  Pointer<LeaderboardEntry>,
  Pointer<Int>,
  Int,
),
    bool Function(
  Pointer<SteamUserStats>,
  SteamLeaderboardEntries,
  int,
  Pointer<LeaderboardEntry>,
  Pointer<Int>,
  int,
)>("SteamAPI_ISteamUserStats_GetDownloadedLeaderboardEntry");

final _uploadLeaderboardScore = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
  Int32,
  Int,
  Pointer<Int>,
  Int,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
  SteamLeaderboard,
  ELeaderboardUploadScoreMethod,
  int,
  Pointer<Int>,
  int,
)>("SteamAPI_ISteamUserStats_UploadLeaderboardScore");

final _attachLeaderboardUGC = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
  SteamLeaderboard,
  UgcHandle,
)>("SteamAPI_ISteamUserStats_AttachLeaderboardUGC");

final _getNumberOfCurrentPlayers = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
)>("SteamAPI_ISteamUserStats_GetNumberOfCurrentPlayers");

final _requestGlobalAchievementPercentages = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
)>("SteamAPI_ISteamUserStats_RequestGlobalAchievementPercentages");

final _getMostAchievedAchievementInfo = dl.lookupFunction<
    Int Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Float>,
  Pointer<Bool>,
),
    int Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  int,
  Pointer<Float>,
  Pointer<Bool>,
)>("SteamAPI_ISteamUserStats_GetMostAchievedAchievementInfo");

final _getNextMostAchievedAchievementInfo = dl.lookupFunction<
    Int Function(
  Pointer<SteamUserStats>,
  Int,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Float>,
  Pointer<Bool>,
),
    int Function(
  Pointer<SteamUserStats>,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Float>,
  Pointer<Bool>,
)>("SteamAPI_ISteamUserStats_GetNextMostAchievedAchievementInfo");

final _getAchievementAchievedPercent = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
)>("SteamAPI_ISteamUserStats_GetAchievementAchievedPercent");

final _requestGlobalStats = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUserStats>,
  Int,
),
    SteamApiCall Function(
  Pointer<SteamUserStats>,
  int,
)>("SteamAPI_ISteamUserStats_RequestGlobalStats");

final _getGlobalStatInt64 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<LongLong>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<LongLong>,
)>("SteamAPI_ISteamUserStats_GetGlobalStatInt64");

final _getGlobalStatDouble = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Double>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Double>,
)>("SteamAPI_ISteamUserStats_GetGlobalStatDouble");

final _getGlobalStatHistoryInt64 = dl.lookupFunction<
    Int Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<LongLong>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<LongLong>,
  int,
)>("SteamAPI_ISteamUserStats_GetGlobalStatHistoryInt64");

final _getGlobalStatHistoryDouble = dl.lookupFunction<
    Int Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Double>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Double>,
  int,
)>("SteamAPI_ISteamUserStats_GetGlobalStatHistoryDouble");

final _getAchievementProgressLimitsInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamUserStats_GetAchievementProgressLimitsInt32");

final _getAchievementProgressLimitsFloat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
  Pointer<Float>,
),
    bool Function(
  Pointer<SteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
  Pointer<Float>,
)>("SteamAPI_ISteamUserStats_GetAchievementProgressLimitsFloat");

extension SteamUserStatsExtensions on Pointer<SteamUserStats> {
  bool requestCurrentStats() => _requestCurrentStats.call(
        this,
      );

  bool getStatInt32(
    Pointer<Utf8> pchName,
    Pointer<Int> pData,
  ) =>
      _getStatInt32.call(
        this,
        pchName,
        pData,
      );

  bool getStatFloat(
    Pointer<Utf8> pchName,
    Pointer<Float> pData,
  ) =>
      _getStatFloat.call(
        this,
        pchName,
        pData,
      );

  bool setStatInt32(
    Pointer<Utf8> pchName,
    int nData,
  ) =>
      _setStatInt32.call(
        this,
        pchName,
        nData,
      );

  bool setStatFloat(
    Pointer<Utf8> pchName,
    double fData,
  ) =>
      _setStatFloat.call(
        this,
        pchName,
        fData,
      );

  bool updateAvgRateStat(
    Pointer<Utf8> pchName,
    double flCountThisSession,
    double dSessionLength,
  ) =>
      _updateAvgRateStat.call(
        this,
        pchName,
        flCountThisSession,
        dSessionLength,
      );

  bool getAchievement(
    Pointer<Utf8> pchName,
    Pointer<Bool> pbAchieved,
  ) =>
      _getAchievement.call(
        this,
        pchName,
        pbAchieved,
      );

  bool setAchievement(
    Pointer<Utf8> pchName,
  ) =>
      _setAchievement.call(
        this,
        pchName,
      );

  bool clearAchievement(
    Pointer<Utf8> pchName,
  ) =>
      _clearAchievement.call(
        this,
        pchName,
      );

  bool getAchievementAndUnlockTime(
    Pointer<Utf8> pchName,
    Pointer<Bool> pbAchieved,
    Pointer<UnsignedInt> punUnlockTime,
  ) =>
      _getAchievementAndUnlockTime.call(
        this,
        pchName,
        pbAchieved,
        punUnlockTime,
      );

  bool storeStats() => _storeStats.call(
        this,
      );

  int getAchievementIcon(
    Pointer<Utf8> pchName,
  ) =>
      _getAchievementIcon.call(
        this,
        pchName,
      );

  Pointer<Utf8> getAchievementDisplayAttribute(
    Pointer<Utf8> pchName,
    Pointer<Utf8> pchKey,
  ) =>
      _getAchievementDisplayAttribute.call(
        this,
        pchName,
        pchKey,
      );

  bool indicateAchievementProgress(
    Pointer<Utf8> pchName,
    int nCurProgress,
    int nMaxProgress,
  ) =>
      _indicateAchievementProgress.call(
        this,
        pchName,
        nCurProgress,
        nMaxProgress,
      );

  int getNumAchievements() => _getNumAchievements.call(
        this,
      );

  Pointer<Utf8> getAchievementName(
    int iAchievement,
  ) =>
      _getAchievementName.call(
        this,
        iAchievement,
      );

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

  bool getUserAchievementAndUnlockTime(
    CSteamId steamIDUser,
    Pointer<Utf8> pchName,
    Pointer<Bool> pbAchieved,
    Pointer<UnsignedInt> punUnlockTime,
  ) =>
      _getUserAchievementAndUnlockTime.call(
        this,
        steamIDUser,
        pchName,
        pbAchieved,
        punUnlockTime,
      );

  bool resetAllStats(
    bool bAchievementsToo,
  ) =>
      _resetAllStats.call(
        this,
        bAchievementsToo,
      );

  SteamApiCall findOrCreateLeaderboard(
    Pointer<Utf8> pchLeaderboardName,
    ELeaderboardSortMethod eLeaderboardSortMethod,
    ELeaderboardDisplayType eLeaderboardDisplayType,
  ) =>
      _findOrCreateLeaderboard.call(
        this,
        pchLeaderboardName,
        eLeaderboardSortMethod,
        eLeaderboardDisplayType,
      );

  SteamApiCall findLeaderboard(
    Pointer<Utf8> pchLeaderboardName,
  ) =>
      _findLeaderboard.call(
        this,
        pchLeaderboardName,
      );

  Pointer<Utf8> getLeaderboardName(
    SteamLeaderboard hSteamLeaderboard,
  ) =>
      _getLeaderboardName.call(
        this,
        hSteamLeaderboard,
      );

  int getLeaderboardEntryCount(
    SteamLeaderboard hSteamLeaderboard,
  ) =>
      _getLeaderboardEntryCount.call(
        this,
        hSteamLeaderboard,
      );

  ELeaderboardSortMethod getLeaderboardSortMethod(
    SteamLeaderboard hSteamLeaderboard,
  ) =>
      _getLeaderboardSortMethod.call(
        this,
        hSteamLeaderboard,
      );

  ELeaderboardDisplayType getLeaderboardDisplayType(
    SteamLeaderboard hSteamLeaderboard,
  ) =>
      _getLeaderboardDisplayType.call(
        this,
        hSteamLeaderboard,
      );

  SteamApiCall downloadLeaderboardEntries(
    SteamLeaderboard hSteamLeaderboard,
    ELeaderboardDataRequest eLeaderboardDataRequest,
    int nRangeStart,
    int nRangeEnd,
  ) =>
      _downloadLeaderboardEntries.call(
        this,
        hSteamLeaderboard,
        eLeaderboardDataRequest,
        nRangeStart,
        nRangeEnd,
      );

  SteamApiCall downloadLeaderboardEntriesForUsers(
    SteamLeaderboard hSteamLeaderboard,
    Pointer<UnsignedLongLong> prgUsers,
    int cUsers,
  ) =>
      _downloadLeaderboardEntriesForUsers.call(
        this,
        hSteamLeaderboard,
        prgUsers,
        cUsers,
      );

  bool getDownloadedLeaderboardEntry(
    SteamLeaderboardEntries hSteamLeaderboardEntries,
    int index,
    Pointer<LeaderboardEntry> pLeaderboardEntry,
    Pointer<Int> pDetails,
    int cDetailsMax,
  ) =>
      _getDownloadedLeaderboardEntry.call(
        this,
        hSteamLeaderboardEntries,
        index,
        pLeaderboardEntry,
        pDetails,
        cDetailsMax,
      );

  SteamApiCall uploadLeaderboardScore(
    SteamLeaderboard hSteamLeaderboard,
    ELeaderboardUploadScoreMethod eLeaderboardUploadScoreMethod,
    int nScore,
    Pointer<Int> pScoreDetails,
    int cScoreDetailsCount,
  ) =>
      _uploadLeaderboardScore.call(
        this,
        hSteamLeaderboard,
        eLeaderboardUploadScoreMethod,
        nScore,
        pScoreDetails,
        cScoreDetailsCount,
      );

  SteamApiCall attachLeaderboardUGC(
    SteamLeaderboard hSteamLeaderboard,
    UgcHandle hUGC,
  ) =>
      _attachLeaderboardUGC.call(
        this,
        hSteamLeaderboard,
        hUGC,
      );

  SteamApiCall getNumberOfCurrentPlayers() => _getNumberOfCurrentPlayers.call(
        this,
      );

  SteamApiCall requestGlobalAchievementPercentages() =>
      _requestGlobalAchievementPercentages.call(
        this,
      );

  int getMostAchievedAchievementInfo(
    Pointer<Utf8> pchName,
    int unNameBufLen,
    Pointer<Float> pflPercent,
    Pointer<Bool> pbAchieved,
  ) =>
      _getMostAchievedAchievementInfo.call(
        this,
        pchName,
        unNameBufLen,
        pflPercent,
        pbAchieved,
      );

  int getNextMostAchievedAchievementInfo(
    int iIteratorPrevious,
    Pointer<Utf8> pchName,
    int unNameBufLen,
    Pointer<Float> pflPercent,
    Pointer<Bool> pbAchieved,
  ) =>
      _getNextMostAchievedAchievementInfo.call(
        this,
        iIteratorPrevious,
        pchName,
        unNameBufLen,
        pflPercent,
        pbAchieved,
      );

  bool getAchievementAchievedPercent(
    Pointer<Utf8> pchName,
    Pointer<Float> pflPercent,
  ) =>
      _getAchievementAchievedPercent.call(
        this,
        pchName,
        pflPercent,
      );

  SteamApiCall requestGlobalStats(
    int nHistoryDays,
  ) =>
      _requestGlobalStats.call(
        this,
        nHistoryDays,
      );

  bool getGlobalStatInt64(
    Pointer<Utf8> pchStatName,
    Pointer<LongLong> pData,
  ) =>
      _getGlobalStatInt64.call(
        this,
        pchStatName,
        pData,
      );

  bool getGlobalStatDouble(
    Pointer<Utf8> pchStatName,
    Pointer<Double> pData,
  ) =>
      _getGlobalStatDouble.call(
        this,
        pchStatName,
        pData,
      );

  int getGlobalStatHistoryInt64(
    Pointer<Utf8> pchStatName,
    Pointer<LongLong> pData,
    int cubData,
  ) =>
      _getGlobalStatHistoryInt64.call(
        this,
        pchStatName,
        pData,
        cubData,
      );

  int getGlobalStatHistoryDouble(
    Pointer<Utf8> pchStatName,
    Pointer<Double> pData,
    int cubData,
  ) =>
      _getGlobalStatHistoryDouble.call(
        this,
        pchStatName,
        pData,
        cubData,
      );

  bool getAchievementProgressLimitsInt32(
    Pointer<Utf8> pchName,
    Pointer<Int> pnMinProgress,
    Pointer<Int> pnMaxProgress,
  ) =>
      _getAchievementProgressLimitsInt32.call(
        this,
        pchName,
        pnMinProgress,
        pnMaxProgress,
      );

  bool getAchievementProgressLimitsFloat(
    Pointer<Utf8> pchName,
    Pointer<Float> pfMinProgress,
    Pointer<Float> pfMaxProgress,
  ) =>
      _getAchievementProgressLimitsFloat.call(
        this,
        pchName,
        pfMinProgress,
        pfMaxProgress,
      );
}
