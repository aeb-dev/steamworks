// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/elobby_comparison.dart";
import "../enums/elobby_distance_filter.dart";
import "../enums/elobby_type.dart";
import "../typedefs.dart";

final _steamMatchmaking = dl.lookupFunction<
    Pointer<ISteamMatchmaking> Function(),
    Pointer<ISteamMatchmaking> Function()>("SteamAPI_SteamMatchmaking_v009");

class ISteamMatchmaking extends Opaque {
  static Pointer<ISteamMatchmaking> get userInstance => _steamMatchmaking();
}

final _getFavoriteGameCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamMatchmaking>,
),
    int Function(
  Pointer<ISteamMatchmaking>,
)>("SteamAPI_ISteamMatchmaking_GetFavoriteGameCount");

final _getFavoriteGame = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  Int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
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
  Pointer<ISteamMatchmaking>,
  UnsignedInt,
  UnsignedInt,
  UnsignedShort,
  UnsignedShort,
  UnsignedInt,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamMatchmaking>,
  AppId,
  int,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamMatchmaking_AddFavoriteGame");

final _removeFavoriteGame = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedInt,
  UnsignedInt,
  UnsignedShort,
  UnsignedShort,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  AppId,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamMatchmaking_RemoveFavoriteGame");

final _requestLobbyList = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamMatchmaking>,
),
    SteamApiCall Function(
  Pointer<ISteamMatchmaking>,
)>("SteamAPI_ISteamMatchmaking_RequestLobbyList");

final _addRequestLobbyListStringFilter = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Int32,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  ELobbyComparison,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListStringFilter");

final _addRequestLobbyListNumericalFilter = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  Pointer<Utf8>,
  Int,
  Int32,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  Pointer<Utf8>,
  int,
  ELobbyComparison,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListNumericalFilter");

final _addRequestLobbyListNearValueFilter = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  Pointer<Utf8>,
  Int,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListNearValueFilter");

final _addRequestLobbyListFilterSlotsAvailable = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  Int,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  int,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListFilterSlotsAvailable");

final _addRequestLobbyListDistanceFilter = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  Int32,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  ELobbyDistanceFilter,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListDistanceFilter");

final _addRequestLobbyListResultCountFilter = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  Int,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  int,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListResultCountFilter");

final _addRequestLobbyListCompatibleMembersFilter = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_AddRequestLobbyListCompatibleMembersFilter");

final _getLobbyByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamMatchmaking>,
  Int,
),
    CSteamId Function(
  Pointer<ISteamMatchmaking>,
  int,
)>("SteamAPI_ISteamMatchmaking_GetLobbyByIndex");

final _createLobby = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamMatchmaking>,
  Int32,
  Int,
),
    SteamApiCall Function(
  Pointer<ISteamMatchmaking>,
  ELobbyType,
  int,
)>("SteamAPI_ISteamMatchmaking_CreateLobby");

final _joinLobby = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_JoinLobby");

final _leaveLobby = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_LeaveLobby");

final _inviteUserToLobby = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_InviteUserToLobby");

final _getNumLobbyMembers = dl.lookupFunction<
    Int Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_GetNumLobbyMembers");

final _getLobbyMemberByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Int,
),
    CSteamId Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  int,
)>("SteamAPI_ISteamMatchmaking_GetLobbyMemberByIndex");

final _getLobbyData = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_GetLobbyData");

final _setLobbyData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_SetLobbyData");

final _getLobbyDataCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_GetLobbyDataCount");

final _getLobbyDataByIndex = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Int,
  Pointer<Utf8>,
  Int,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamMatchmaking_GetLobbyDataByIndex");

final _deleteLobbyData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_DeleteLobbyData");

final _getLobbyMemberData = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_GetLobbyMemberData");

final _setLobbyMemberData = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmaking_SetLobbyMemberData");

final _sendLobbyChatMsg = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Pointer<Void>,
  Int,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamMatchmaking_SendLobbyChatMsg");

final _getLobbyChatEntry = dl.lookupFunction<
    Int Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Int,
  Pointer<UnsignedLongLong>,
  Pointer<Void>,
  Int,
  Pointer<Int32>,
),
    int Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  int,
  Pointer<UnsignedLongLong>,
  Pointer<Void>,
  int,
  Pointer<Int32>,
)>("SteamAPI_ISteamMatchmaking_GetLobbyChatEntry");

final _requestLobbyData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_RequestLobbyData");

final _setLobbyGameServer = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedShort,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  int,
  int,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_SetLobbyGameServer");

final _getLobbyGameServer = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Pointer<UnsignedInt>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  Pointer<UnsignedInt>,
  Pointer<UnsignedShort>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamMatchmaking_GetLobbyGameServer");

final _setLobbyMemberLimit = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Int,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  int,
)>("SteamAPI_ISteamMatchmaking_SetLobbyMemberLimit");

final _getLobbyMemberLimit = dl.lookupFunction<
    Int Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_GetLobbyMemberLimit");

final _setLobbyType = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Int32,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  ELobbyType,
)>("SteamAPI_ISteamMatchmaking_SetLobbyType");

final _setLobbyJoinable = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  bool,
)>("SteamAPI_ISteamMatchmaking_SetLobbyJoinable");

final _getLobbyOwner = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
),
    CSteamId Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_GetLobbyOwner");

final _setLobbyOwner = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_SetLobbyOwner");

final _setLinkedLobby = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamMatchmaking>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamMatchmaking>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamMatchmaking_SetLinkedLobby");

extension ISteamMatchmakingExtensions on Pointer<ISteamMatchmaking> {
  int getFavoriteGameCount() => _getFavoriteGameCount.call(
        this,
      );

  bool getFavoriteGame(
    int iGame,
    Pointer<UnsignedInt> pnAppId,
    Pointer<UnsignedInt> pnIp,
    Pointer<UnsignedShort> pnConnPort,
    Pointer<UnsignedShort> pnQueryPort,
    Pointer<UnsignedInt> punFlags,
    Pointer<UnsignedInt> pRTime32LastPlayedOnServer,
  ) =>
      _getFavoriteGame.call(
        this,
        iGame,
        pnAppId,
        pnIp,
        pnConnPort,
        pnQueryPort,
        punFlags,
        pRTime32LastPlayedOnServer,
      );

  int addFavoriteGame(
    AppId nAppId,
    int nIp,
    int nConnPort,
    int nQueryPort,
    int flags,
    int rTime32LastPlayedOnServer,
  ) =>
      _addFavoriteGame.call(
        this,
        nAppId,
        nIp,
        nConnPort,
        nQueryPort,
        flags,
        rTime32LastPlayedOnServer,
      );

  bool removeFavoriteGame(
    AppId nAppId,
    int nIp,
    int nConnPort,
    int nQueryPort,
    int flags,
  ) =>
      _removeFavoriteGame.call(
        this,
        nAppId,
        nIp,
        nConnPort,
        nQueryPort,
        flags,
      );

  SteamApiCall requestLobbyList() => _requestLobbyList.call(
        this,
      );

  void addRequestLobbyListStringFilter(
    Pointer<Utf8> keyToMatch,
    Pointer<Utf8> valueToMatch,
    ELobbyComparison comparisonType,
  ) =>
      _addRequestLobbyListStringFilter.call(
        this,
        keyToMatch,
        valueToMatch,
        comparisonType,
      );

  void addRequestLobbyListNumericalFilter(
    Pointer<Utf8> keyToMatch,
    int nValueToMatch,
    ELobbyComparison comparisonType,
  ) =>
      _addRequestLobbyListNumericalFilter.call(
        this,
        keyToMatch,
        nValueToMatch,
        comparisonType,
      );

  void addRequestLobbyListNearValueFilter(
    Pointer<Utf8> keyToMatch,
    int nValueToBeCloseTo,
  ) =>
      _addRequestLobbyListNearValueFilter.call(
        this,
        keyToMatch,
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
    ELobbyDistanceFilter lobbyDistanceFilter,
  ) =>
      _addRequestLobbyListDistanceFilter.call(
        this,
        lobbyDistanceFilter,
      );

  void addRequestLobbyListResultCountFilter(
    int cMaxResults,
  ) =>
      _addRequestLobbyListResultCountFilter.call(
        this,
        cMaxResults,
      );

  void addRequestLobbyListCompatibleMembersFilter(
    CSteamId steamIdLobby,
  ) =>
      _addRequestLobbyListCompatibleMembersFilter.call(
        this,
        steamIdLobby,
      );

  CSteamId getLobbyByIndex(
    int iLobby,
  ) =>
      _getLobbyByIndex.call(
        this,
        iLobby,
      );

  SteamApiCall createLobby(
    ELobbyType lobbyType,
    int cMaxMembers,
  ) =>
      _createLobby.call(
        this,
        lobbyType,
        cMaxMembers,
      );

  SteamApiCall joinLobby(
    CSteamId steamIdLobby,
  ) =>
      _joinLobby.call(
        this,
        steamIdLobby,
      );

  void leaveLobby(
    CSteamId steamIdLobby,
  ) =>
      _leaveLobby.call(
        this,
        steamIdLobby,
      );

  bool inviteUserToLobby(
    CSteamId steamIdLobby,
    CSteamId steamIdInvitee,
  ) =>
      _inviteUserToLobby.call(
        this,
        steamIdLobby,
        steamIdInvitee,
      );

  int getNumLobbyMembers(
    CSteamId steamIdLobby,
  ) =>
      _getNumLobbyMembers.call(
        this,
        steamIdLobby,
      );

  CSteamId getLobbyMemberByIndex(
    CSteamId steamIdLobby,
    int iMember,
  ) =>
      _getLobbyMemberByIndex.call(
        this,
        steamIdLobby,
        iMember,
      );

  Pointer<Utf8> getLobbyData(
    CSteamId steamIdLobby,
    Pointer<Utf8> key,
  ) =>
      _getLobbyData.call(
        this,
        steamIdLobby,
        key,
      );

  bool setLobbyData(
    CSteamId steamIdLobby,
    Pointer<Utf8> key,
    Pointer<Utf8> value,
  ) =>
      _setLobbyData.call(
        this,
        steamIdLobby,
        key,
        value,
      );

  int getLobbyDataCount(
    CSteamId steamIdLobby,
  ) =>
      _getLobbyDataCount.call(
        this,
        steamIdLobby,
      );

  bool getLobbyDataByIndex(
    CSteamId steamIdLobby,
    int iLobbyData,
    Pointer<Utf8> key,
    int cchKeyBufferSize,
    Pointer<Utf8> value,
    int cchValueBufferSize,
  ) =>
      _getLobbyDataByIndex.call(
        this,
        steamIdLobby,
        iLobbyData,
        key,
        cchKeyBufferSize,
        value,
        cchValueBufferSize,
      );

  bool deleteLobbyData(
    CSteamId steamIdLobby,
    Pointer<Utf8> key,
  ) =>
      _deleteLobbyData.call(
        this,
        steamIdLobby,
        key,
      );

  Pointer<Utf8> getLobbyMemberData(
    CSteamId steamIdLobby,
    CSteamId steamIdUser,
    Pointer<Utf8> key,
  ) =>
      _getLobbyMemberData.call(
        this,
        steamIdLobby,
        steamIdUser,
        key,
      );

  void setLobbyMemberData(
    CSteamId steamIdLobby,
    Pointer<Utf8> key,
    Pointer<Utf8> value,
  ) =>
      _setLobbyMemberData.call(
        this,
        steamIdLobby,
        key,
        value,
      );

  bool sendLobbyChatMsg(
    CSteamId steamIdLobby,
    Pointer<Void> pvMsgBody,
    int cubMsgBody,
  ) =>
      _sendLobbyChatMsg.call(
        this,
        steamIdLobby,
        pvMsgBody,
        cubMsgBody,
      );

  int getLobbyChatEntry(
    CSteamId steamIdLobby,
    int iChatId,
    Pointer<UnsignedLongLong> pSteamIdUser,
    Pointer<Void> pvData,
    int cubData,
    Pointer<Int32> peChatEntryType,
  ) =>
      _getLobbyChatEntry.call(
        this,
        steamIdLobby,
        iChatId,
        pSteamIdUser,
        pvData,
        cubData,
        peChatEntryType,
      );

  bool requestLobbyData(
    CSteamId steamIdLobby,
  ) =>
      _requestLobbyData.call(
        this,
        steamIdLobby,
      );

  void setLobbyGameServer(
    CSteamId steamIdLobby,
    int gameServerIp,
    int gameServerPort,
    CSteamId steamIdGameServer,
  ) =>
      _setLobbyGameServer.call(
        this,
        steamIdLobby,
        gameServerIp,
        gameServerPort,
        steamIdGameServer,
      );

  bool getLobbyGameServer(
    CSteamId steamIdLobby,
    Pointer<UnsignedInt> punGameServerIp,
    Pointer<UnsignedShort> punGameServerPort,
    Pointer<UnsignedLongLong> psteamIdGameServer,
  ) =>
      _getLobbyGameServer.call(
        this,
        steamIdLobby,
        punGameServerIp,
        punGameServerPort,
        psteamIdGameServer,
      );

  bool setLobbyMemberLimit(
    CSteamId steamIdLobby,
    int cMaxMembers,
  ) =>
      _setLobbyMemberLimit.call(
        this,
        steamIdLobby,
        cMaxMembers,
      );

  int getLobbyMemberLimit(
    CSteamId steamIdLobby,
  ) =>
      _getLobbyMemberLimit.call(
        this,
        steamIdLobby,
      );

  bool setLobbyType(
    CSteamId steamIdLobby,
    ELobbyType lobbyType,
  ) =>
      _setLobbyType.call(
        this,
        steamIdLobby,
        lobbyType,
      );

  bool setLobbyJoinable(
    CSteamId steamIdLobby,
    bool lobbyJoinable,
  ) =>
      _setLobbyJoinable.call(
        this,
        steamIdLobby,
        lobbyJoinable,
      );

  CSteamId getLobbyOwner(
    CSteamId steamIdLobby,
  ) =>
      _getLobbyOwner.call(
        this,
        steamIdLobby,
      );

  bool setLobbyOwner(
    CSteamId steamIdLobby,
    CSteamId steamIdNewOwner,
  ) =>
      _setLobbyOwner.call(
        this,
        steamIdLobby,
        steamIdNewOwner,
      );

  bool setLinkedLobby(
    CSteamId steamIdLobby,
    CSteamId steamIdLobbyDependent,
  ) =>
      _setLinkedLobby.call(
        this,
        steamIdLobby,
        steamIdLobbyDependent,
      );
}
