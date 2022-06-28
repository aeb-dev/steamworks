// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EItemStatisticAliasDart = int;
typedef EItemStatisticAliasC = Int32;

enum EItemStatistic {
  numSubscriptions(0),
  numFavorites(1),
  numFollowers(2),
  numUniqueSubscriptions(3),
  numUniqueFavorites(4),
  numUniqueFollowers(5),
  numUniqueWebsiteViews(6),
  reportScore(7),
  numSecondsPlayed(8),
  numPlaytimeSessions(9),
  numComments(10),
  numSecondsPlayedDuringTimePeriod(11),
  numPlaytimeSessionsDuringTimePeriod(12),
  ;

  final int value;

  const EItemStatistic(this.value);

  factory EItemStatistic.fromValue(int value) {
    switch (value) {
      case 0:
        return EItemStatistic.numSubscriptions;
      case 1:
        return EItemStatistic.numFavorites;
      case 2:
        return EItemStatistic.numFollowers;
      case 3:
        return EItemStatistic.numUniqueSubscriptions;
      case 4:
        return EItemStatistic.numUniqueFavorites;
      case 5:
        return EItemStatistic.numUniqueFollowers;
      case 6:
        return EItemStatistic.numUniqueWebsiteViews;
      case 7:
        return EItemStatistic.reportScore;
      case 8:
        return EItemStatistic.numSecondsPlayed;
      case 9:
        return EItemStatistic.numPlaytimeSessions;
      case 10:
        return EItemStatistic.numComments;
      case 11:
        return EItemStatistic.numSecondsPlayedDuringTimePeriod;
      case 12:
        return EItemStatistic.numPlaytimeSessionsDuringTimePeriod;
      default:
        throw "Unknown value for 'EItemStatistic'. The value was: '$value'";
    }
  }
}
