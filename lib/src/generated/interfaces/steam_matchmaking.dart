import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_lobby_comparison.dart";
import "../enums/e_lobby_distance_filter.dart";
import "../enums/e_lobby_type.dart";
import "../steam_api.dart";
import "../typedefs.dart";

class SteamMatchmaking extends Opaque {
  static Pointer<SteamMatchmaking> steamMatchmaking() => nullptr;
}

final _getFavoriteGameCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmaking>,
),
    int Function(
  Pointer<SteamMatchmaking>,
)>("SteamAPI_ISteamMatchmaking_GetFavoriteGameCount");

final _getFavoriteGame = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  Int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamMatchmaking_GetFavoriteGame");

final _addFavoriteGame = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmaking>,
  UnsignedInt,
  UnsignedInt,
  UnsignedShort,
  UnsignedShort,
  UnsignedInt,
  UnsignedInt,
),
    int Function(
  Pointer<SteamMatchmaking>,
  AppId,
  int,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamMatchmaking_AddFavoriteGame");

final _removeFavoriteGame = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedInt,
  UnsignedInt,
  UnsignedShort,
  UnsignedShort,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  AppId,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamMatchmaking_RemoveFavoriteGame");

final _requestLobbyList = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamMatchmaking>,
),
    SteamApiCall Function(
  Pointer<SteamMatchmaking>,
)>("SteamAPI_ISteamMatchmaking_RequestLobbyList");

final _addRequestLobbyListStringFilter = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Int32,
),
    void Function(
  Pointer<SteamMatchmaking>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  ELobbyComparison,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListStringFilter");

final _addRequestLobbyListNumericalFilter = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  Pointer<Utf8>,
  Int,
  Int32,
),
    void Function(
  Pointer<SteamMatchmaking>,
  Pointer<Utf8>,
  int,
  ELobbyComparison,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListNumericalFilter");

final _addRequestLobbyListNearValueFilter = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  Pointer<Utf8>,
  Int,
),
    void Function(
  Pointer<SteamMatchmaking>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListNearValueFilter");

final _addRequestLobbyListFilterSlotsAvailable = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  Int,
),
    void Function(
  Pointer<SteamMatchmaking>,
  int,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListFilterSlotsAvailable");

final _addRequestLobbyListDistanceFilter = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  Int32,
),
    void Function(
  Pointer<SteamMatchmaking>,
  ELobbyDistanceFilter,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListDistanceFilter");

final _addRequestLobbyListResultCountFilter = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  Int,
),
    void Function(
  Pointer<SteamMatchmaking>,
  int,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListResultCountFilter");

final _addRequestLobbyListCompatibleMembersFilter = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListCompatibleMembersFilter");

final _getLobbyByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamMatchmaking>,
  Int,
),
    CSteamId Function(
  Pointer<SteamMatchmaking>,
  int,
)>("SteamAPI_ISteamMatchmaking_GetLobbyByIndex");

final _createLobby = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamMatchmaking>,
  Int32,
  Int,
),
    SteamApiCall Function(
  Pointer<SteamMatchmaking>,
  ELobbyType,
  int,
)>("SteamAPI_ISteamMatchmaking_CreateLobby");

final _joinLobby = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_JoinLobby");

final _leaveLobby = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_LeaveLobby");

final _inviteUserToLobby = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_InviteUserToLobby");

final _getNumLobbyMembers = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_GetNumLobbyMembers");

final _getLobbyMemberByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Int,
),
    CSteamId Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  int,
)>("SteamAPI_ISteamMatchmaking_GetLobbyMemberByIndex");

final _getLobbyData = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_GetLobbyData");

final _setLobbyData = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_SetLobbyData");

final _getLobbyDataCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_GetLobbyDataCount");

final _getLobbyDataByIndex = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Int,
  Pointer<Utf8>,
  Int,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamMatchmaking_GetLobbyDataByIndex");

final _deleteLobbyData = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_DeleteLobbyData");

final _getLobbyMemberData = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_GetLobbyMemberData");

final _setLobbyMemberData = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_SetLobbyMemberData");

final _sendLobbyChatMsg = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Void>,
  Int,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamMatchmaking_SendLobbyChatMsg");

final _getLobbyChatEntry = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Int,
  Pointer<UnsignedLongLong>,
  Pointer<Void>,
  Int,
  Pointer<Int32>,
),
    int Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  int,
  Pointer<UnsignedLongLong>,
  Pointer<Void>,
  int,
  Pointer<Int32>,
)>("SteamAPI_ISteamMatchmaking_GetLobbyChatEntry");

final _requestLobbyData = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_RequestLobbyData");

final _setLobbyGameServer = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedShort,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  int,
  int,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_SetLobbyGameServer");

final _getLobbyGameServer = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Pointer<UnsignedInt>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  Pointer<UnsignedInt>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamMatchmaking_GetLobbyGameServer");

final _setLobbyMemberLimit = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Int,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  int,
)>("SteamAPI_ISteamMatchmaking_SetLobbyMemberLimit");

final _getLobbyMemberLimit = dl.lookupFunction<
    Int Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_GetLobbyMemberLimit");

final _setLobbyType = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Int32,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  ELobbyType,
)>("SteamAPI_ISteamMatchmaking_SetLobbyType");

final _setLobbyJoinable = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  bool,
)>("SteamAPI_ISteamMatchmaking_SetLobbyJoinable");

final _getLobbyOwner = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
),
    CSteamId Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_GetLobbyOwner");

final _setLobbyOwner = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_SetLobbyOwner");

final _setLinkedLobby = dl.lookupFunction<
    Bool Function(
  Pointer<SteamMatchmaking>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamMatchmaking>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_SetLinkedLobby");

extension SteamMatchmakingExtensions on Pointer<SteamMatchmaking> {
  int getFavoriteGameCount() => _getFavoriteGameCount.call(
        this,
      );

  bool getFavoriteGame(
    int iGame,
    Pointer<UnsignedInt> pnAppID,
    Pointer<UnsignedInt> pnIP,
    Pointer<UnsignedShort> pnConnPort,
    Pointer<UnsignedShort> pnQueryPort,
    Pointer<UnsignedInt> punFlags,
    Pointer<UnsignedInt> pRTime32LastPlayedOnServer,
  ) =>
      _getFavoriteGame.call(
        this,
        iGame,
        pnAppID,
        pnIP,
        pnConnPort,
        pnQueryPort,
        punFlags,
        pRTime32LastPlayedOnServer,
      );

  int addFavoriteGame(
    AppId nAppID,
    int nIP,
    int nConnPort,
    int nQueryPort,
    int unFlags,
    int rTime32LastPlayedOnServer,
  ) =>
      _addFavoriteGame.call(
        this,
        nAppID,
        nIP,
        nConnPort,
        nQueryPort,
        unFlags,
        rTime32LastPlayedOnServer,
      );

  bool removeFavoriteGame(
    AppId nAppID,
    int nIP,
    int nConnPort,
    int nQueryPort,
    int unFlags,
  ) =>
      _removeFavoriteGame.call(
        this,
        nAppID,
        nIP,
        nConnPort,
        nQueryPort,
        unFlags,
      );

  SteamApiCall requestLobbyList() => _requestLobbyList.call(
        this,
      );

  void addRequestLobbyListStringFilter(
    Pointer<Utf8> pchKeyToMatch,
    Pointer<Utf8> pchValueToMatch,
    ELobbyComparison eComparisonType,
  ) =>
      _addRequestLobbyListStringFilter.call(
        this,
        pchKeyToMatch,
        pchValueToMatch,
        eComparisonType,
      );

  void addRequestLobbyListNumericalFilter(
    Pointer<Utf8> pchKeyToMatch,
    int nValueToMatch,
    ELobbyComparison eComparisonType,
  ) =>
      _addRequestLobbyListNumericalFilter.call(
        this,
        pchKeyToMatch,
        nValueToMatch,
        eComparisonType,
      );

  void addRequestLobbyListNearValueFilter(
    Pointer<Utf8> pchKeyToMatch,
    int nValueToBeCloseTo,
  ) =>
      _addRequestLobbyListNearValueFilter.call(
        this,
        pchKeyToMatch,
        nValueToBeCloseTo,
      );

  void addRequestLobbyListFilterSlotsAvailable(
    int nSlotsAvailable,
  ) =>
      _addRequestLobbyListFilterSlotsAvailable.call(
        this,
        nSlotsAvailable,
      );

  void addRequestLobbyListDistanceFilter(
    ELobbyDistanceFilter eLobbyDistanceFilter,
  ) =>
      _addRequestLobbyListDistanceFilter.call(
        this,
        eLobbyDistanceFilter,
      );

  void addRequestLobbyListResultCountFilter(
    int cMaxResults,
  ) =>
      _addRequestLobbyListResultCountFilter.call(
        this,
        cMaxResults,
      );

  void addRequestLobbyListCompatibleMembersFilter(
    CSteamId steamIDLobby,
  ) =>
      _addRequestLobbyListCompatibleMembersFilter.call(
        this,
        steamIDLobby,
      );

  CSteamId getLobbyByIndex(
    int iLobby,
  ) =>
      _getLobbyByIndex.call(
        this,
        iLobby,
      );

  SteamApiCall createLobby(
    ELobbyType eLobbyType,
    int cMaxMembers,
  ) =>
      _createLobby.call(
        this,
        eLobbyType,
        cMaxMembers,
      );

  SteamApiCall joinLobby(
    CSteamId steamIDLobby,
  ) =>
      _joinLobby.call(
        this,
        steamIDLobby,
      );

  void leaveLobby(
    CSteamId steamIDLobby,
  ) =>
      _leaveLobby.call(
        this,
        steamIDLobby,
      );

  bool inviteUserToLobby(
    CSteamId steamIDLobby,
    CSteamId steamIDInvitee,
  ) =>
      _inviteUserToLobby.call(
        this,
        steamIDLobby,
        steamIDInvitee,
      );

  int getNumLobbyMembers(
    CSteamId steamIDLobby,
  ) =>
      _getNumLobbyMembers.call(
        this,
        steamIDLobby,
      );

  CSteamId getLobbyMemberByIndex(
    CSteamId steamIDLobby,
    int iMember,
  ) =>
      _getLobbyMemberByIndex.call(
        this,
        steamIDLobby,
        iMember,
      );

  Pointer<Utf8> getLobbyData(
    CSteamId steamIDLobby,
    Pointer<Utf8> pchKey,
  ) =>
      _getLobbyData.call(
        this,
        steamIDLobby,
        pchKey,
      );

  bool setLobbyData(
    CSteamId steamIDLobby,
    Pointer<Utf8> pchKey,
    Pointer<Utf8> pchValue,
  ) =>
      _setLobbyData.call(
        this,
        steamIDLobby,
        pchKey,
        pchValue,
      );

  int getLobbyDataCount(
    CSteamId steamIDLobby,
  ) =>
      _getLobbyDataCount.call(
        this,
        steamIDLobby,
      );

  bool getLobbyDataByIndex(
    CSteamId steamIDLobby,
    int iLobbyData,
    Pointer<Utf8> pchKey,
    int cchKeyBufferSize,
    Pointer<Utf8> pchValue,
    int cchValueBufferSize,
  ) =>
      _getLobbyDataByIndex.call(
        this,
        steamIDLobby,
        iLobbyData,
        pchKey,
        cchKeyBufferSize,
        pchValue,
        cchValueBufferSize,
      );

  bool deleteLobbyData(
    CSteamId steamIDLobby,
    Pointer<Utf8> pchKey,
  ) =>
      _deleteLobbyData.call(
        this,
        steamIDLobby,
        pchKey,
      );

  Pointer<Utf8> getLobbyMemberData(
    CSteamId steamIDLobby,
    CSteamId steamIDUser,
    Pointer<Utf8> pchKey,
  ) =>
      _getLobbyMemberData.call(
        this,
        steamIDLobby,
        steamIDUser,
        pchKey,
      );

  void setLobbyMemberData(
    CSteamId steamIDLobby,
    Pointer<Utf8> pchKey,
    Pointer<Utf8> pchValue,
  ) =>
      _setLobbyMemberData.call(
        this,
        steamIDLobby,
        pchKey,
        pchValue,
      );

  bool sendLobbyChatMsg(
    CSteamId steamIDLobby,
    Pointer<Void> pvMsgBody,
    int cubMsgBody,
  ) =>
      _sendLobbyChatMsg.call(
        this,
        steamIDLobby,
        pvMsgBody,
        cubMsgBody,
      );

  int getLobbyChatEntry(
    CSteamId steamIDLobby,
    int iChatID,
    Pointer<UnsignedLongLong> pSteamIDUser,
    Pointer<Void> pvData,
    int cubData,
    Pointer<Int32> peChatEntryType,
  ) =>
      _getLobbyChatEntry.call(
        this,
        steamIDLobby,
        iChatID,
        pSteamIDUser,
        pvData,
        cubData,
        peChatEntryType,
      );

  bool requestLobbyData(
    CSteamId steamIDLobby,
  ) =>
      _requestLobbyData.call(
        this,
        steamIDLobby,
      );

  void setLobbyGameServer(
    CSteamId steamIDLobby,
    int unGameServerIP,
    int unGameServerPort,
    CSteamId steamIDGameServer,
  ) =>
      _setLobbyGameServer.call(
        this,
        steamIDLobby,
        unGameServerIP,
        unGameServerPort,
        steamIDGameServer,
      );

  bool getLobbyGameServer(
    CSteamId steamIDLobby,
    Pointer<UnsignedInt> punGameServerIP,
    Pointer<UnsignedShort> punGameServerPort,
    Pointer<UnsignedLongLong> psteamIDGameServer,
  ) =>
      _getLobbyGameServer.call(
        this,
        steamIDLobby,
        punGameServerIP,
        punGameServerPort,
        psteamIDGameServer,
      );

  bool setLobbyMemberLimit(
    CSteamId steamIDLobby,
    int cMaxMembers,
  ) =>
      _setLobbyMemberLimit.call(
        this,
        steamIDLobby,
        cMaxMembers,
      );

  int getLobbyMemberLimit(
    CSteamId steamIDLobby,
  ) =>
      _getLobbyMemberLimit.call(
        this,
        steamIDLobby,
      );

  bool setLobbyType(
    CSteamId steamIDLobby,
    ELobbyType eLobbyType,
  ) =>
      _setLobbyType.call(
        this,
        steamIDLobby,
        eLobbyType,
      );

  bool setLobbyJoinable(
    CSteamId steamIDLobby,
    bool bLobbyJoinable,
  ) =>
      _setLobbyJoinable.call(
        this,
        steamIDLobby,
        bLobbyJoinable,
      );

  CSteamId getLobbyOwner(
    CSteamId steamIDLobby,
  ) =>
      _getLobbyOwner.call(
        this,
        steamIDLobby,
      );

  bool setLobbyOwner(
    CSteamId steamIDLobby,
    CSteamId steamIDNewOwner,
  ) =>
      _setLobbyOwner.call(
        this,
        steamIDLobby,
        steamIDNewOwner,
      );

  bool setLinkedLobby(
    CSteamId steamIDLobby,
    CSteamId steamIDLobbyDependent,
  ) =>
      _setLinkedLobby.call(
        this,
        steamIDLobby,
        steamIDLobbyDependent,
      );
}
