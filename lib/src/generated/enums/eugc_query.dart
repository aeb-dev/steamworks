// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EUgcQueryAliasDart = int;
typedef EUgcQueryAliasC = Int32;

enum EUgcQuery {
  rankedByVote(0),
  rankedByPublicationDate(1),
  acceptedForGameRankedByAcceptanceDate(2),
  rankedByTrend(3),
  favoritedByFriendsRankedByPublicationDate(4),
  createdByFriendsRankedByPublicationDate(5),
  rankedByNumTimesReported(6),
  createdByFollowedUsersRankedByPublicationDate(7),
  notYetRated(8),
  rankedByTotalVotesAsc(9),
  rankedByVotesUp(10),
  rankedByTextSearch(11),
  rankedByTotalUniqueSubscriptions(12),
  rankedByPlaytimeTrend(13),
  rankedByTotalPlaytime(14),
  rankedByAveragePlaytimeTrend(15),
  rankedByLifetimeAveragePlaytime(16),
  rankedByPlaytimeSessionsTrend(17),
  rankedByLifetimePlaytimeSessions(18),
  rankedByLastUpdatedDate(19),
  ;

  final int value;

  const EUgcQuery(this.value);

  factory EUgcQuery.fromValue(int value) {
    switch (value) {
      case 0:
        return EUgcQuery.rankedByVote;
      case 1:
        return EUgcQuery.rankedByPublicationDate;
      case 2:
        return EUgcQuery.acceptedForGameRankedByAcceptanceDate;
      case 3:
        return EUgcQuery.rankedByTrend;
      case 4:
        return EUgcQuery.favoritedByFriendsRankedByPublicationDate;
      case 5:
        return EUgcQuery.createdByFriendsRankedByPublicationDate;
      case 6:
        return EUgcQuery.rankedByNumTimesReported;
      case 7:
        return EUgcQuery.createdByFollowedUsersRankedByPublicationDate;
      case 8:
        return EUgcQuery.notYetRated;
      case 9:
        return EUgcQuery.rankedByTotalVotesAsc;
      case 10:
        return EUgcQuery.rankedByVotesUp;
      case 11:
        return EUgcQuery.rankedByTextSearch;
      case 12:
        return EUgcQuery.rankedByTotalUniqueSubscriptions;
      case 13:
        return EUgcQuery.rankedByPlaytimeTrend;
      case 14:
        return EUgcQuery.rankedByTotalPlaytime;
      case 15:
        return EUgcQuery.rankedByAveragePlaytimeTrend;
      case 16:
        return EUgcQuery.rankedByLifetimeAveragePlaytime;
      case 17:
        return EUgcQuery.rankedByPlaytimeSessionsTrend;
      case 18:
        return EUgcQuery.rankedByLifetimePlaytimeSessions;
      case 19:
        return EUgcQuery.rankedByLastUpdatedDate;
      default:
        throw "Unknown value for 'EUgcQuery'. The value was: '$value'";
    }
  }
}
