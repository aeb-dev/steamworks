// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/eleaderboard_data_request.dart";
import "../enums/eleaderboard_display_type.dart";
import "../enums/eleaderboard_sort_method.dart";
import "../enums/eleaderboard_upload_score_method.dart";
import "../structs/leaderboard_entry.dart";
import "../typedefs.dart";

final _steamUserStats = dl.lookupFunction<Pointer<ISteamUserStats> Function(),
    Pointer<ISteamUserStats> Function()>("SteamAPI_SteamUserStats_v012");

class ISteamUserStats extends Opaque {
  static Pointer<ISteamUserStats> get userInstance => _steamUserStats();
}

final _requestCurrentStats = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
),
    bool Function(
  Pointer<ISteamUserStats>,
)>("SteamAPI_ISteamUserStats_RequestCurrentStats");

final _getStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Int>,
)>("SteamAPI_ISteamUserStats_GetStatInt32");

final _getStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
)>("SteamAPI_ISteamUserStats_GetStatFloat");

final _setStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUserStats_SetStatInt32");

final _setStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Float,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  double,
)>("SteamAPI_ISteamUserStats_SetStatFloat");

final _updateAvgRateStat = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Float,
  Double,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  double,
  double,
)>("SteamAPI_ISteamUserStats_UpdateAvgRateStat");

final _getAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Bool>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Bool>,
)>("SteamAPI_ISteamUserStats_GetAchievement");

final _setAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_SetAchievement");

final _clearAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_ClearAchievement");

final _getAchievementAndUnlockTime = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Bool>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Bool>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUserStats_GetAchievementAndUnlockTime");

final _storeStats = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
),
    bool Function(
  Pointer<ISteamUserStats>,
)>("SteamAPI_ISteamUserStats_StoreStats");

final _getAchievementIcon = dl.lookupFunction<
    Int Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
),
    int Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_GetAchievementIcon");

final _getAchievementDisplayAttribute = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_GetAchievementDisplayAttribute");

final _indicateAchievementProgress = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  int,
  int,
)>("SteamAPI_ISteamUserStats_IndicateAchievementProgress");

final _getNumAchievements = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUserStats>,
),
    int Function(
  Pointer<ISteamUserStats>,
)>("SteamAPI_ISteamUserStats_GetNumAchievements");

final _getAchievementName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamUserStats>,
  UnsignedInt,
),
    Pointer<Utf8> Function(
  Pointer<ISteamUserStats>,
  int,
)>("SteamAPI_ISteamUserStats_GetAchievementName");

final _requestUserStats = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
  CSteamId,
)>("SteamAPI_ISteamUserStats_RequestUserStats");

final _getUserStatInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Int>,
)>("SteamAPI_ISteamUserStats_GetUserStatInt32");

final _getUserStatFloat = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Float>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Float>,
)>("SteamAPI_ISteamUserStats_GetUserStatFloat");

final _getUserAchievement = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Bool>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Bool>,
)>("SteamAPI_ISteamUserStats_GetUserAchievement");

final _getUserAchievementAndUnlockTime = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Bool>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Bool>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUserStats_GetUserAchievementAndUnlockTime");

final _resetAllStats = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Bool,
),
    bool Function(
  Pointer<ISteamUserStats>,
  bool,
)>("SteamAPI_ISteamUserStats_ResetAllStats");

final _findOrCreateLeaderboard = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Int32,
  Int32,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  ELeaderboardSortMethod,
  ELeaderboardDisplayType,
)>("SteamAPI_ISteamUserStats_FindOrCreateLeaderboard");

final _findLeaderboard = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUserStats_FindLeaderboard");

final _getLeaderboardName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<ISteamUserStats>,
  SteamLeaderboard,
)>("SteamAPI_ISteamUserStats_GetLeaderboardName");

final _getLeaderboardEntryCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamUserStats>,
  SteamLeaderboard,
)>("SteamAPI_ISteamUserStats_GetLeaderboardEntryCount");

final _getLeaderboardSortMethod = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
),
    ELeaderboardSortMethod Function(
  Pointer<ISteamUserStats>,
  SteamLeaderboard,
)>("SteamAPI_ISteamUserStats_GetLeaderboardSortMethod");

final _getLeaderboardDisplayType = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
),
    ELeaderboardDisplayType Function(
  Pointer<ISteamUserStats>,
  SteamLeaderboard,
)>("SteamAPI_ISteamUserStats_GetLeaderboardDisplayType");

final _downloadLeaderboardEntries = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
  Int32,
  Int,
  Int,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
  SteamLeaderboard,
  ELeaderboardDataRequest,
  int,
  int,
)>("SteamAPI_ISteamUserStats_DownloadLeaderboardEntries");

final _downloadLeaderboardEntriesForUsers = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Int,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
  SteamLeaderboard,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUserStats_DownloadLeaderboardEntriesForUsers");

final _getDownloadedLeaderboardEntry = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
  Int,
  Pointer<LeaderboardEntry>,
  Pointer<Int>,
  Int,
),
    bool Function(
  Pointer<ISteamUserStats>,
  SteamLeaderboardEntries,
  int,
  Pointer<LeaderboardEntry>,
  Pointer<Int>,
  int,
)>("SteamAPI_ISteamUserStats_GetDownloadedLeaderboardEntry");

final _uploadLeaderboardScore = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
  Int32,
  Int,
  Pointer<Int>,
  Int,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
  SteamLeaderboard,
  ELeaderboardUploadScoreMethod,
  int,
  Pointer<Int>,
  int,
)>("SteamAPI_ISteamUserStats_UploadLeaderboardScore");

final _attachLeaderboardUgc = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
  SteamLeaderboard,
  UgcHandle,
)>("SteamAPI_ISteamUserStats_AttachLeaderboardUGC");

final _getNumberOfCurrentPlayers = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
)>("SteamAPI_ISteamUserStats_GetNumberOfCurrentPlayers");

final _requestGlobalAchievementPercentages = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
)>("SteamAPI_ISteamUserStats_RequestGlobalAchievementPercentages");

final _getMostAchievedAchievementInfo = dl.lookupFunction<
    Int Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Float>,
  Pointer<Bool>,
),
    int Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  int,
  Pointer<Float>,
  Pointer<Bool>,
)>("SteamAPI_ISteamUserStats_GetMostAchievedAchievementInfo");

final _getNextMostAchievedAchievementInfo = dl.lookupFunction<
    Int Function(
  Pointer<ISteamUserStats>,
  Int,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Float>,
  Pointer<Bool>,
),
    int Function(
  Pointer<ISteamUserStats>,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Float>,
  Pointer<Bool>,
)>("SteamAPI_ISteamUserStats_GetNextMostAchievedAchievementInfo");

final _getAchievementAchievedPercent = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
)>("SteamAPI_ISteamUserStats_GetAchievementAchievedPercent");

final _requestGlobalStats = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUserStats>,
  Int,
),
    SteamApiCall Function(
  Pointer<ISteamUserStats>,
  int,
)>("SteamAPI_ISteamUserStats_RequestGlobalStats");

final _getGlobalStatInt64 = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<LongLong>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<LongLong>,
)>("SteamAPI_ISteamUserStats_GetGlobalStatInt64");

final _getGlobalStatDouble = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Double>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Double>,
)>("SteamAPI_ISteamUserStats_GetGlobalStatDouble");

final _getGlobalStatHistoryInt64 = dl.lookupFunction<
    Int Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<LongLong>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<LongLong>,
  int,
)>("SteamAPI_ISteamUserStats_GetGlobalStatHistoryInt64");

final _getGlobalStatHistoryDouble = dl.lookupFunction<
    Int Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Double>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Double>,
  int,
)>("SteamAPI_ISteamUserStats_GetGlobalStatHistoryDouble");

final _getAchievementProgressLimitsInt32 = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamUserStats_GetAchievementProgressLimitsInt32");

final _getAchievementProgressLimitsFloat = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
  Pointer<Float>,
),
    bool Function(
  Pointer<ISteamUserStats>,
  Pointer<Utf8>,
  Pointer<Float>,
  Pointer<Float>,
)>("SteamAPI_ISteamUserStats_GetAchievementProgressLimitsFloat");

extension ISteamUserStatsExtensions on Pointer<ISteamUserStats> {
  bool requestCurrentStats() => _requestCurrentStats.call(
        this,
      );

  bool getStatInt32(
    Pointer<Utf8> name,
    Pointer<Int> pData,
  ) =>
      _getStatInt32.call(
        this,
        name,
        pData,
      );

  bool getStatFloat(
    Pointer<Utf8> name,
    Pointer<Float> pData,
  ) =>
      _getStatFloat.call(
        this,
        name,
        pData,
      );

  bool setStatInt32(
    Pointer<Utf8> name,
    int nData,
  ) =>
      _setStatInt32.call(
        this,
        name,
        nData,
      );

  bool setStatFloat(
    Pointer<Utf8> name,
    double fData,
  ) =>
      _setStatFloat.call(
        this,
        name,
        fData,
      );

  bool updateAvgRateStat(
    Pointer<Utf8> name,
    double countThisSession,
    double dSessionLength,
  ) =>
      _updateAvgRateStat.call(
        this,
        name,
        countThisSession,
        dSessionLength,
      );

  bool getAchievement(
    Pointer<Utf8> name,
    Pointer<Bool> pbAchieved,
  ) =>
      _getAchievement.call(
        this,
        name,
        pbAchieved,
      );

  bool setAchievement(
    Pointer<Utf8> name,
  ) =>
      _setAchievement.call(
        this,
        name,
      );

  bool clearAchievement(
    Pointer<Utf8> name,
  ) =>
      _clearAchievement.call(
        this,
        name,
      );

  bool getAchievementAndUnlockTime(
    Pointer<Utf8> name,
    Pointer<Bool> pbAchieved,
    Pointer<UnsignedInt> punUnlockTime,
  ) =>
      _getAchievementAndUnlockTime.call(
        this,
        name,
        pbAchieved,
        punUnlockTime,
      );

  bool storeStats() => _storeStats.call(
        this,
      );

  int getAchievementIcon(
    Pointer<Utf8> name,
  ) =>
      _getAchievementIcon.call(
        this,
        name,
      );

  Pointer<Utf8> getAchievementDisplayAttribute(
    Pointer<Utf8> name,
    Pointer<Utf8> key,
  ) =>
      _getAchievementDisplayAttribute.call(
        this,
        name,
        key,
      );

  bool indicateAchievementProgress(
    Pointer<Utf8> name,
    int nCurProgress,
    int nMaxProgress,
  ) =>
      _indicateAchievementProgress.call(
        this,
        name,
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

  bool getUserAchievementAndUnlockTime(
    CSteamId steamIdUser,
    Pointer<Utf8> name,
    Pointer<Bool> pbAchieved,
    Pointer<UnsignedInt> punUnlockTime,
  ) =>
      _getUserAchievementAndUnlockTime.call(
        this,
        steamIdUser,
        name,
        pbAchieved,
        punUnlockTime,
      );

  bool resetAllStats(
    bool achievementsToo,
  ) =>
      _resetAllStats.call(
        this,
        achievementsToo,
      );

  SteamApiCall findOrCreateLeaderboard(
    Pointer<Utf8> leaderboardName,
    ELeaderboardSortMethod leaderboardSortMethod,
    ELeaderboardDisplayType leaderboardDisplayType,
  ) =>
      _findOrCreateLeaderboard.call(
        this,
        leaderboardName,
        leaderboardSortMethod,
        leaderboardDisplayType,
      );

  SteamApiCall findLeaderboard(
    Pointer<Utf8> leaderboardName,
  ) =>
      _findLeaderboard.call(
        this,
        leaderboardName,
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
    ELeaderboardDataRequest leaderboardDataRequest,
    int nRangeStart,
    int nRangeEnd,
  ) =>
      _downloadLeaderboardEntries.call(
        this,
        hSteamLeaderboard,
        leaderboardDataRequest,
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
    ELeaderboardUploadScoreMethod leaderboardUploadScoreMethod,
    int nScore,
    Pointer<Int> pScoreDetails,
    int cScoreDetailsCount,
  ) =>
      _uploadLeaderboardScore.call(
        this,
        hSteamLeaderboard,
        leaderboardUploadScoreMethod,
        nScore,
        pScoreDetails,
        cScoreDetailsCount,
      );

  SteamApiCall attachLeaderboardUgc(
    SteamLeaderboard hSteamLeaderboard,
    UgcHandle hUgc,
  ) =>
      _attachLeaderboardUgc.call(
        this,
        hSteamLeaderboard,
        hUgc,
      );

  SteamApiCall getNumberOfCurrentPlayers() => _getNumberOfCurrentPlayers.call(
        this,
      );

  SteamApiCall requestGlobalAchievementPercentages() =>
      _requestGlobalAchievementPercentages.call(
        this,
      );

  int getMostAchievedAchievementInfo(
    Pointer<Utf8> name,
    int nameBufLen,
    Pointer<Float> percent,
    Pointer<Bool> pbAchieved,
  ) =>
      _getMostAchievedAchievementInfo.call(
        this,
        name,
        nameBufLen,
        percent,
        pbAchieved,
      );

  int getNextMostAchievedAchievementInfo(
    int iIteratorPrevious,
    Pointer<Utf8> name,
    int nameBufLen,
    Pointer<Float> percent,
    Pointer<Bool> pbAchieved,
  ) =>
      _getNextMostAchievedAchievementInfo.call(
        this,
        iIteratorPrevious,
        name,
        nameBufLen,
        percent,
        pbAchieved,
      );

  bool getAchievementAchievedPercent(
    Pointer<Utf8> name,
    Pointer<Float> percent,
  ) =>
      _getAchievementAchievedPercent.call(
        this,
        name,
        percent,
      );

  SteamApiCall requestGlobalStats(
    int nHistoryDays,
  ) =>
      _requestGlobalStats.call(
        this,
        nHistoryDays,
      );

  bool getGlobalStatInt64(
    Pointer<Utf8> statName,
    Pointer<LongLong> pData,
  ) =>
      _getGlobalStatInt64.call(
        this,
        statName,
        pData,
      );

  bool getGlobalStatDouble(
    Pointer<Utf8> statName,
    Pointer<Double> pData,
  ) =>
      _getGlobalStatDouble.call(
        this,
        statName,
        pData,
      );

  int getGlobalStatHistoryInt64(
    Pointer<Utf8> statName,
    Pointer<LongLong> pData,
    int cubData,
  ) =>
      _getGlobalStatHistoryInt64.call(
        this,
        statName,
        pData,
        cubData,
      );

  int getGlobalStatHistoryDouble(
    Pointer<Utf8> statName,
    Pointer<Double> pData,
    int cubData,
  ) =>
      _getGlobalStatHistoryDouble.call(
        this,
        statName,
        pData,
        cubData,
      );

  bool getAchievementProgressLimitsInt32(
    Pointer<Utf8> name,
    Pointer<Int> pnMinProgress,
    Pointer<Int> pnMaxProgress,
  ) =>
      _getAchievementProgressLimitsInt32.call(
        this,
        name,
        pnMinProgress,
        pnMaxProgress,
      );

  bool getAchievementProgressLimitsFloat(
    Pointer<Utf8> name,
    Pointer<Float> pfMinProgress,
    Pointer<Float> pfMaxProgress,
  ) =>
      _getAchievementProgressLimitsFloat.call(
        this,
        name,
        pfMinProgress,
        pfMaxProgress,
      );
}
