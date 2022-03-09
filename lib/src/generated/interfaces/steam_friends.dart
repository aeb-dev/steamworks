import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_activate_game_overlay_to_web_page_mode.dart";
import "../enums/e_friend_relationship.dart";
import "../enums/e_overlay_to_store_flag.dart";
import "../enums/e_persona_state.dart";
import "../steam_api.dart";
import "../structs/friend_game_info.dart";
import "../typedefs.dart";

class SteamFriends extends Opaque {
  static Pointer<SteamFriends> steamFriends() => nullptr;
}

final _getPersonaName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
),
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
)>("SteamAPI_ISteamFriends_GetPersonaName");

final _setPersonaName = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_SetPersonaName");

final _getPersonaState = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamFriends>,
),
    EPersonaState Function(
  Pointer<SteamFriends>,
)>("SteamAPI_ISteamFriends_GetPersonaState");

final _getFriendCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  Int,
),
    int Function(
  Pointer<SteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_GetFriendCount");

final _getFriendByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  Int,
  Int,
),
    CSteamId Function(
  Pointer<SteamFriends>,
  int,
  int,
)>("SteamAPI_ISteamFriends_GetFriendByIndex");

final _getFriendRelationship = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    EFriendRelationship Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendRelationship");

final _getFriendPersonaState = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    EPersonaState Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendPersonaState");

final _getFriendPersonaName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendPersonaName");

final _getFriendGamePlayed = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Pointer<FriendGameInfo>,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
  Pointer<FriendGameInfo>,
)>("SteamAPI_ISteamFriends_GetFriendGamePlayed");

final _getFriendPersonaNameHistory = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Int,
),
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetFriendPersonaNameHistory");

final _getFriendSteamLevel = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendSteamLevel");

final _getPlayerNickname = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetPlayerNickname");

final _getFriendsGroupCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
),
    int Function(
  Pointer<SteamFriends>,
)>("SteamAPI_ISteamFriends_GetFriendsGroupCount");

final _getFriendsGroupIDByIndex = dl.lookupFunction<
    Short Function(
  Pointer<SteamFriends>,
  Int,
),
    FriendsGroupId Function(
  Pointer<SteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_GetFriendsGroupIDByIndex");

final _getFriendsGroupName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  Short,
),
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  FriendsGroupId,
)>("SteamAPI_ISteamFriends_GetFriendsGroupName");

final _getFriendsGroupMembersCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  Short,
),
    int Function(
  Pointer<SteamFriends>,
  FriendsGroupId,
)>("SteamAPI_ISteamFriends_GetFriendsGroupMembersCount");

final _getFriendsGroupMembersList = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  Short,
  Pointer<UnsignedLongLong>,
  Int,
),
    void Function(
  Pointer<SteamFriends>,
  FriendsGroupId,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamFriends_GetFriendsGroupMembersList");

final _hasFriend = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Int,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_HasFriend");

final _getClanCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
),
    int Function(
  Pointer<SteamFriends>,
)>("SteamAPI_ISteamFriends_GetClanCount");

final _getClanByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  Int,
),
    CSteamId Function(
  Pointer<SteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_GetClanByIndex");

final _getClanName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanName");

final _getClanTag = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanTag");

final _getClanActivityCounts = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Pointer<Int>,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
  Pointer<Int>,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamFriends_GetClanActivityCounts");

final _downloadClanActivityCounts = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  Pointer<UnsignedLongLong>,
  Int,
),
    SteamApiCall Function(
  Pointer<SteamFriends>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamFriends_DownloadClanActivityCounts");

final _getFriendCountFromSource = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendCountFromSource");

final _getFriendFromSourceByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Int,
),
    CSteamId Function(
  Pointer<SteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetFriendFromSourceByIndex");

final _isUserInSource = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsUserInSource");

final _setInGameVoiceSpeaking = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Bool,
),
    void Function(
  Pointer<SteamFriends>,
  CSteamId,
  bool,
)>("SteamAPI_ISteamFriends_SetInGameVoiceSpeaking");

final _activateGameOverlay = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_ActivateGameOverlay");

final _activateGameOverlayToUser = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
  CSteamId,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayToUser");

final _activateGameOverlayToWebPage = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
  Int32,
),
    void Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
  EActivateGameOverlayToWebPageMode,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayToWebPage");

final _activateGameOverlayToStore = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<SteamFriends>,
  AppId,
  EOverlayToStoreFlag,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayToStore");

final _setPlayedWith = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_SetPlayedWith");

final _activateGameOverlayInviteDialog = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialog");

final _getSmallFriendAvatar = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetSmallFriendAvatar");

final _getMediumFriendAvatar = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetMediumFriendAvatar");

final _getLargeFriendAvatar = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetLargeFriendAvatar");

final _requestUserInformation = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
  bool,
)>("SteamAPI_ISteamFriends_RequestUserInformation");

final _requestClanOfficerList = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_RequestClanOfficerList");

final _getClanOwner = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    CSteamId Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanOwner");

final _getClanOfficerCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanOfficerCount");

final _getClanOfficerByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Int,
),
    CSteamId Function(
  Pointer<SteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetClanOfficerByIndex");

final _getUserRestrictions = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamFriends>,
),
    int Function(
  Pointer<SteamFriends>,
)>("SteamAPI_ISteamFriends_GetUserRestrictions");

final _setRichPresence = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_SetRichPresence");

final _clearRichPresence = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
),
    void Function(
  Pointer<SteamFriends>,
)>("SteamAPI_ISteamFriends_ClearRichPresence");

final _getFriendRichPresence = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_GetFriendRichPresence");

final _getFriendRichPresenceKeyCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendRichPresenceKeyCount");

final _getFriendRichPresenceKeyByIndex = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Int,
),
    Pointer<Utf8> Function(
  Pointer<SteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetFriendRichPresenceKeyByIndex");

final _requestFriendRichPresence = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_RequestFriendRichPresence");

final _inviteUserToGame = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_InviteUserToGame");

final _getCoplayFriendCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
),
    int Function(
  Pointer<SteamFriends>,
)>("SteamAPI_ISteamFriends_GetCoplayFriendCount");

final _getCoplayFriend = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  Int,
),
    CSteamId Function(
  Pointer<SteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_GetCoplayFriend");

final _getFriendCoplayTime = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendCoplayTime");

final _getFriendCoplayGame = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    AppId Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendCoplayGame");

final _joinClanChatRoom = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_JoinClanChatRoom");

final _leaveClanChatRoom = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_LeaveClanChatRoom");

final _getClanChatMemberCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanChatMemberCount");

final _getChatMemberByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Int,
),
    CSteamId Function(
  Pointer<SteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetChatMemberByIndex");

final _sendClanChatMessage = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_SendClanChatMessage");

final _getClanChatMessage = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Int,
  Pointer<Void>,
  Int,
  Pointer<Int32>,
  Pointer<UnsignedLongLong>,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
  int,
  Pointer<Void>,
  int,
  Pointer<Int32>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamFriends_GetClanChatMessage");

final _isClanChatAdmin = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsClanChatAdmin");

final _isClanChatWindowOpenInSteam = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsClanChatWindowOpenInSteam");

final _openClanChatWindowInSteam = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_OpenClanChatWindowInSteam");

final _closeClanChatWindowInSteam = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_CloseClanChatWindowInSteam");

final _setListenForFriendsMessages = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  Bool,
),
    bool Function(
  Pointer<SteamFriends>,
  bool,
)>("SteamAPI_ISteamFriends_SetListenForFriendsMessages");

final _replyToFriendMessage = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_ReplyToFriendMessage");

final _getFriendMessage = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
  Int,
  Pointer<Void>,
  Int,
  Pointer<Int32>,
),
    int Function(
  Pointer<SteamFriends>,
  CSteamId,
  int,
  Pointer<Void>,
  int,
  Pointer<Int32>,
)>("SteamAPI_ISteamFriends_GetFriendMessage");

final _getFollowerCount = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFollowerCount");

final _isFollowing = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsFollowing");

final _enumerateFollowingList = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamFriends>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_EnumerateFollowingList");

final _isClanPublic = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsClanPublic");

final _isClanOfficialGameGroup = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsClanOfficialGameGroup");

final _getNumChatsWithUnreadPriorityMessages = dl.lookupFunction<
    Int Function(
  Pointer<SteamFriends>,
),
    int Function(
  Pointer<SteamFriends>,
)>("SteamAPI_ISteamFriends_GetNumChatsWithUnreadPriorityMessages");

final _activateGameOverlayRemotePlayTogetherInviteDialog = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayRemotePlayTogetherInviteDialog");

final _registerProtocolInOverlayBrowser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_RegisterProtocolInOverlayBrowser");

final _activateGameOverlayInviteDialogConnectString = dl.lookupFunction<
    Void Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamFriends>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialogConnectString");

extension SteamFriendsExtensions on Pointer<SteamFriends> {
  Pointer<Utf8> getPersonaName() => _getPersonaName.call(
        this,
      );

  SteamApiCall setPersonaName(
    Pointer<Utf8> pchPersonaName,
  ) =>
      _setPersonaName.call(
        this,
        pchPersonaName,
      );

  EPersonaState getPersonaState() => _getPersonaState.call(
        this,
      );

  int getFriendCount(
    int iFriendFlags,
  ) =>
      _getFriendCount.call(
        this,
        iFriendFlags,
      );

  CSteamId getFriendByIndex(
    int iFriend,
    int iFriendFlags,
  ) =>
      _getFriendByIndex.call(
        this,
        iFriend,
        iFriendFlags,
      );

  EFriendRelationship getFriendRelationship(
    CSteamId steamIDFriend,
  ) =>
      _getFriendRelationship.call(
        this,
        steamIDFriend,
      );

  EPersonaState getFriendPersonaState(
    CSteamId steamIDFriend,
  ) =>
      _getFriendPersonaState.call(
        this,
        steamIDFriend,
      );

  Pointer<Utf8> getFriendPersonaName(
    CSteamId steamIDFriend,
  ) =>
      _getFriendPersonaName.call(
        this,
        steamIDFriend,
      );

  bool getFriendGamePlayed(
    CSteamId steamIDFriend,
    Pointer<FriendGameInfo> pFriendGameInfo,
  ) =>
      _getFriendGamePlayed.call(
        this,
        steamIDFriend,
        pFriendGameInfo,
      );

  Pointer<Utf8> getFriendPersonaNameHistory(
    CSteamId steamIDFriend,
    int iPersonaName,
  ) =>
      _getFriendPersonaNameHistory.call(
        this,
        steamIDFriend,
        iPersonaName,
      );

  int getFriendSteamLevel(
    CSteamId steamIDFriend,
  ) =>
      _getFriendSteamLevel.call(
        this,
        steamIDFriend,
      );

  Pointer<Utf8> getPlayerNickname(
    CSteamId steamIDPlayer,
  ) =>
      _getPlayerNickname.call(
        this,
        steamIDPlayer,
      );

  int getFriendsGroupCount() => _getFriendsGroupCount.call(
        this,
      );

  FriendsGroupId getFriendsGroupIDByIndex(
    int iFG,
  ) =>
      _getFriendsGroupIDByIndex.call(
        this,
        iFG,
      );

  Pointer<Utf8> getFriendsGroupName(
    FriendsGroupId friendsGroupID,
  ) =>
      _getFriendsGroupName.call(
        this,
        friendsGroupID,
      );

  int getFriendsGroupMembersCount(
    FriendsGroupId friendsGroupID,
  ) =>
      _getFriendsGroupMembersCount.call(
        this,
        friendsGroupID,
      );

  void getFriendsGroupMembersList(
    FriendsGroupId friendsGroupID,
    Pointer<UnsignedLongLong> pOutSteamIDMembers,
    int nMembersCount,
  ) =>
      _getFriendsGroupMembersList.call(
        this,
        friendsGroupID,
        pOutSteamIDMembers,
        nMembersCount,
      );

  bool hasFriend(
    CSteamId steamIDFriend,
    int iFriendFlags,
  ) =>
      _hasFriend.call(
        this,
        steamIDFriend,
        iFriendFlags,
      );

  int getClanCount() => _getClanCount.call(
        this,
      );

  CSteamId getClanByIndex(
    int iClan,
  ) =>
      _getClanByIndex.call(
        this,
        iClan,
      );

  Pointer<Utf8> getClanName(
    CSteamId steamIDClan,
  ) =>
      _getClanName.call(
        this,
        steamIDClan,
      );

  Pointer<Utf8> getClanTag(
    CSteamId steamIDClan,
  ) =>
      _getClanTag.call(
        this,
        steamIDClan,
      );

  bool getClanActivityCounts(
    CSteamId steamIDClan,
    Pointer<Int> pnOnline,
    Pointer<Int> pnInGame,
    Pointer<Int> pnChatting,
  ) =>
      _getClanActivityCounts.call(
        this,
        steamIDClan,
        pnOnline,
        pnInGame,
        pnChatting,
      );

  SteamApiCall downloadClanActivityCounts(
    Pointer<UnsignedLongLong> psteamIDClans,
    int cClansToRequest,
  ) =>
      _downloadClanActivityCounts.call(
        this,
        psteamIDClans,
        cClansToRequest,
      );

  int getFriendCountFromSource(
    CSteamId steamIDSource,
  ) =>
      _getFriendCountFromSource.call(
        this,
        steamIDSource,
      );

  CSteamId getFriendFromSourceByIndex(
    CSteamId steamIDSource,
    int iFriend,
  ) =>
      _getFriendFromSourceByIndex.call(
        this,
        steamIDSource,
        iFriend,
      );

  bool isUserInSource(
    CSteamId steamIDUser,
    CSteamId steamIDSource,
  ) =>
      _isUserInSource.call(
        this,
        steamIDUser,
        steamIDSource,
      );

  void setInGameVoiceSpeaking(
    CSteamId steamIDUser,
    bool bSpeaking,
  ) =>
      _setInGameVoiceSpeaking.call(
        this,
        steamIDUser,
        bSpeaking,
      );

  void activateGameOverlay(
    Pointer<Utf8> pchDialog,
  ) =>
      _activateGameOverlay.call(
        this,
        pchDialog,
      );

  void activateGameOverlayToUser(
    Pointer<Utf8> pchDialog,
    CSteamId steamID,
  ) =>
      _activateGameOverlayToUser.call(
        this,
        pchDialog,
        steamID,
      );

  void activateGameOverlayToWebPage(
    Pointer<Utf8> pchURL,
    EActivateGameOverlayToWebPageMode eMode,
  ) =>
      _activateGameOverlayToWebPage.call(
        this,
        pchURL,
        eMode,
      );

  void activateGameOverlayToStore(
    AppId nAppID,
    EOverlayToStoreFlag eFlag,
  ) =>
      _activateGameOverlayToStore.call(
        this,
        nAppID,
        eFlag,
      );

  void setPlayedWith(
    CSteamId steamIDUserPlayedWith,
  ) =>
      _setPlayedWith.call(
        this,
        steamIDUserPlayedWith,
      );

  void activateGameOverlayInviteDialog(
    CSteamId steamIDLobby,
  ) =>
      _activateGameOverlayInviteDialog.call(
        this,
        steamIDLobby,
      );

  int getSmallFriendAvatar(
    CSteamId steamIDFriend,
  ) =>
      _getSmallFriendAvatar.call(
        this,
        steamIDFriend,
      );

  int getMediumFriendAvatar(
    CSteamId steamIDFriend,
  ) =>
      _getMediumFriendAvatar.call(
        this,
        steamIDFriend,
      );

  int getLargeFriendAvatar(
    CSteamId steamIDFriend,
  ) =>
      _getLargeFriendAvatar.call(
        this,
        steamIDFriend,
      );

  bool requestUserInformation(
    CSteamId steamIDUser,
    bool bRequireNameOnly,
  ) =>
      _requestUserInformation.call(
        this,
        steamIDUser,
        bRequireNameOnly,
      );

  SteamApiCall requestClanOfficerList(
    CSteamId steamIDClan,
  ) =>
      _requestClanOfficerList.call(
        this,
        steamIDClan,
      );

  CSteamId getClanOwner(
    CSteamId steamIDClan,
  ) =>
      _getClanOwner.call(
        this,
        steamIDClan,
      );

  int getClanOfficerCount(
    CSteamId steamIDClan,
  ) =>
      _getClanOfficerCount.call(
        this,
        steamIDClan,
      );

  CSteamId getClanOfficerByIndex(
    CSteamId steamIDClan,
    int iOfficer,
  ) =>
      _getClanOfficerByIndex.call(
        this,
        steamIDClan,
        iOfficer,
      );

  int getUserRestrictions() => _getUserRestrictions.call(
        this,
      );

  bool setRichPresence(
    Pointer<Utf8> pchKey,
    Pointer<Utf8> pchValue,
  ) =>
      _setRichPresence.call(
        this,
        pchKey,
        pchValue,
      );

  void clearRichPresence() => _clearRichPresence.call(
        this,
      );

  Pointer<Utf8> getFriendRichPresence(
    CSteamId steamIDFriend,
    Pointer<Utf8> pchKey,
  ) =>
      _getFriendRichPresence.call(
        this,
        steamIDFriend,
        pchKey,
      );

  int getFriendRichPresenceKeyCount(
    CSteamId steamIDFriend,
  ) =>
      _getFriendRichPresenceKeyCount.call(
        this,
        steamIDFriend,
      );

  Pointer<Utf8> getFriendRichPresenceKeyByIndex(
    CSteamId steamIDFriend,
    int iKey,
  ) =>
      _getFriendRichPresenceKeyByIndex.call(
        this,
        steamIDFriend,
        iKey,
      );

  void requestFriendRichPresence(
    CSteamId steamIDFriend,
  ) =>
      _requestFriendRichPresence.call(
        this,
        steamIDFriend,
      );

  bool inviteUserToGame(
    CSteamId steamIDFriend,
    Pointer<Utf8> pchConnectString,
  ) =>
      _inviteUserToGame.call(
        this,
        steamIDFriend,
        pchConnectString,
      );

  int getCoplayFriendCount() => _getCoplayFriendCount.call(
        this,
      );

  CSteamId getCoplayFriend(
    int iCoplayFriend,
  ) =>
      _getCoplayFriend.call(
        this,
        iCoplayFriend,
      );

  int getFriendCoplayTime(
    CSteamId steamIDFriend,
  ) =>
      _getFriendCoplayTime.call(
        this,
        steamIDFriend,
      );

  AppId getFriendCoplayGame(
    CSteamId steamIDFriend,
  ) =>
      _getFriendCoplayGame.call(
        this,
        steamIDFriend,
      );

  SteamApiCall joinClanChatRoom(
    CSteamId steamIDClan,
  ) =>
      _joinClanChatRoom.call(
        this,
        steamIDClan,
      );

  bool leaveClanChatRoom(
    CSteamId steamIDClan,
  ) =>
      _leaveClanChatRoom.call(
        this,
        steamIDClan,
      );

  int getClanChatMemberCount(
    CSteamId steamIDClan,
  ) =>
      _getClanChatMemberCount.call(
        this,
        steamIDClan,
      );

  CSteamId getChatMemberByIndex(
    CSteamId steamIDClan,
    int iUser,
  ) =>
      _getChatMemberByIndex.call(
        this,
        steamIDClan,
        iUser,
      );

  bool sendClanChatMessage(
    CSteamId steamIDClanChat,
    Pointer<Utf8> pchText,
  ) =>
      _sendClanChatMessage.call(
        this,
        steamIDClanChat,
        pchText,
      );

  int getClanChatMessage(
    CSteamId steamIDClanChat,
    int iMessage,
    Pointer<Void> prgchText,
    int cchTextMax,
    Pointer<Int32> peChatEntryType,
    Pointer<UnsignedLongLong> psteamidChatter,
  ) =>
      _getClanChatMessage.call(
        this,
        steamIDClanChat,
        iMessage,
        prgchText,
        cchTextMax,
        peChatEntryType,
        psteamidChatter,
      );

  bool isClanChatAdmin(
    CSteamId steamIDClanChat,
    CSteamId steamIDUser,
  ) =>
      _isClanChatAdmin.call(
        this,
        steamIDClanChat,
        steamIDUser,
      );

  bool isClanChatWindowOpenInSteam(
    CSteamId steamIDClanChat,
  ) =>
      _isClanChatWindowOpenInSteam.call(
        this,
        steamIDClanChat,
      );

  bool openClanChatWindowInSteam(
    CSteamId steamIDClanChat,
  ) =>
      _openClanChatWindowInSteam.call(
        this,
        steamIDClanChat,
      );

  bool closeClanChatWindowInSteam(
    CSteamId steamIDClanChat,
  ) =>
      _closeClanChatWindowInSteam.call(
        this,
        steamIDClanChat,
      );

  bool setListenForFriendsMessages(
    bool bInterceptEnabled,
  ) =>
      _setListenForFriendsMessages.call(
        this,
        bInterceptEnabled,
      );

  bool replyToFriendMessage(
    CSteamId steamIDFriend,
    Pointer<Utf8> pchMsgToSend,
  ) =>
      _replyToFriendMessage.call(
        this,
        steamIDFriend,
        pchMsgToSend,
      );

  int getFriendMessage(
    CSteamId steamIDFriend,
    int iMessageID,
    Pointer<Void> pvData,
    int cubData,
    Pointer<Int32> peChatEntryType,
  ) =>
      _getFriendMessage.call(
        this,
        steamIDFriend,
        iMessageID,
        pvData,
        cubData,
        peChatEntryType,
      );

  SteamApiCall getFollowerCount(
    CSteamId steamID,
  ) =>
      _getFollowerCount.call(
        this,
        steamID,
      );

  SteamApiCall isFollowing(
    CSteamId steamID,
  ) =>
      _isFollowing.call(
        this,
        steamID,
      );

  SteamApiCall enumerateFollowingList(
    int unStartIndex,
  ) =>
      _enumerateFollowingList.call(
        this,
        unStartIndex,
      );

  bool isClanPublic(
    CSteamId steamIDClan,
  ) =>
      _isClanPublic.call(
        this,
        steamIDClan,
      );

  bool isClanOfficialGameGroup(
    CSteamId steamIDClan,
  ) =>
      _isClanOfficialGameGroup.call(
        this,
        steamIDClan,
      );

  int getNumChatsWithUnreadPriorityMessages() =>
      _getNumChatsWithUnreadPriorityMessages.call(
        this,
      );

  void activateGameOverlayRemotePlayTogetherInviteDialog(
    CSteamId steamIDLobby,
  ) =>
      _activateGameOverlayRemotePlayTogetherInviteDialog.call(
        this,
        steamIDLobby,
      );

  bool registerProtocolInOverlayBrowser(
    Pointer<Utf8> pchProtocol,
  ) =>
      _registerProtocolInOverlayBrowser.call(
        this,
        pchProtocol,
      );

  void activateGameOverlayInviteDialogConnectString(
    Pointer<Utf8> pchConnectString,
  ) =>
      _activateGameOverlayInviteDialogConnectString.call(
        this,
        pchConnectString,
      );
}
