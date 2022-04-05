// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/eactivate_game_overlay_to_web_page_mode.dart";
import "../enums/efriend_relationship.dart";
import "../enums/eoverlay_to_store_flag.dart";
import "../enums/epersona_state.dart";
import "../structs/friend_game_info.dart";
import "../typedefs.dart";

final _steamFriends = dl.lookupFunction<Pointer<ISteamFriends> Function(),
    Pointer<ISteamFriends> Function()>("SteamAPI_SteamFriends_v017");

class ISteamFriends extends Opaque {
  static Pointer<ISteamFriends> get userInstance => _steamFriends();
}

final _getPersonaName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
)>("SteamAPI_ISteamFriends_GetPersonaName");

final _setPersonaName = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_SetPersonaName");

final _getPersonaState = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamFriends>,
),
    EPersonaState Function(
  Pointer<ISteamFriends>,
)>("SteamAPI_ISteamFriends_GetPersonaState");

final _getFriendCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  Int,
),
    int Function(
  Pointer<ISteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_GetFriendCount");

final _getFriendByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  Int,
  Int,
),
    CSteamId Function(
  Pointer<ISteamFriends>,
  int,
  int,
)>("SteamAPI_ISteamFriends_GetFriendByIndex");

final _getFriendRelationship = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    EFriendRelationship Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendRelationship");

final _getFriendPersonaState = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    EPersonaState Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendPersonaState");

final _getFriendPersonaName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendPersonaName");

final _getFriendGamePlayed = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Pointer<FriendGameInfo>,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
  Pointer<FriendGameInfo>,
)>("SteamAPI_ISteamFriends_GetFriendGamePlayed");

final _getFriendPersonaNameHistory = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Int,
),
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetFriendPersonaNameHistory");

final _getFriendSteamLevel = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendSteamLevel");

final _getPlayerNickname = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetPlayerNickname");

final _getFriendsGroupCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
),
    int Function(
  Pointer<ISteamFriends>,
)>("SteamAPI_ISteamFriends_GetFriendsGroupCount");

final _getFriendsGroupIdByIndex = dl.lookupFunction<
    Short Function(
  Pointer<ISteamFriends>,
  Int,
),
    FriendsGroupId Function(
  Pointer<ISteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_GetFriendsGroupIDByIndex");

final _getFriendsGroupName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  Short,
),
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  FriendsGroupId,
)>("SteamAPI_ISteamFriends_GetFriendsGroupName");

final _getFriendsGroupMembersCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  Short,
),
    int Function(
  Pointer<ISteamFriends>,
  FriendsGroupId,
)>("SteamAPI_ISteamFriends_GetFriendsGroupMembersCount");

final _getFriendsGroupMembersList = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  Short,
  Pointer<UnsignedLongLong>,
  Int,
),
    void Function(
  Pointer<ISteamFriends>,
  FriendsGroupId,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamFriends_GetFriendsGroupMembersList");

final _hasFriend = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Int,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_HasFriend");

final _getClanCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
),
    int Function(
  Pointer<ISteamFriends>,
)>("SteamAPI_ISteamFriends_GetClanCount");

final _getClanByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  Int,
),
    CSteamId Function(
  Pointer<ISteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_GetClanByIndex");

final _getClanName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanName");

final _getClanTag = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanTag");

final _getClanActivityCounts = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Pointer<Int>,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
  Pointer<Int>,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamFriends_GetClanActivityCounts");

final _downloadClanActivityCounts = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  Pointer<UnsignedLongLong>,
  Int,
),
    SteamApiCall Function(
  Pointer<ISteamFriends>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamFriends_DownloadClanActivityCounts");

final _getFriendCountFromSource = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendCountFromSource");

final _getFriendFromSourceByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Int,
),
    CSteamId Function(
  Pointer<ISteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetFriendFromSourceByIndex");

final _isUserInSource = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsUserInSource");

final _setInGameVoiceSpeaking = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Bool,
),
    void Function(
  Pointer<ISteamFriends>,
  CSteamId,
  bool,
)>("SteamAPI_ISteamFriends_SetInGameVoiceSpeaking");

final _activateGameOverlay = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_ActivateGameOverlay");

final _activateGameOverlayToUser = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
  CSteamId,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayToUser");

final _activateGameOverlayToWebPage = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
  Int32,
),
    void Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
  EActivateGameOverlayToWebPageMode,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayToWebPage");

final _activateGameOverlayToStore = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<ISteamFriends>,
  AppId,
  EOverlayToStoreFlag,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayToStore");

final _setPlayedWith = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_SetPlayedWith");

final _activateGameOverlayInviteDialog = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialog");

final _getSmallFriendAvatar = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetSmallFriendAvatar");

final _getMediumFriendAvatar = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetMediumFriendAvatar");

final _getLargeFriendAvatar = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetLargeFriendAvatar");

final _requestUserInformation = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
  bool,
)>("SteamAPI_ISteamFriends_RequestUserInformation");

final _requestClanOfficerList = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_RequestClanOfficerList");

final _getClanOwner = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    CSteamId Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanOwner");

final _getClanOfficerCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanOfficerCount");

final _getClanOfficerByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Int,
),
    CSteamId Function(
  Pointer<ISteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetClanOfficerByIndex");

final _getUserRestrictions = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamFriends>,
),
    int Function(
  Pointer<ISteamFriends>,
)>("SteamAPI_ISteamFriends_GetUserRestrictions");

final _setRichPresence = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_SetRichPresence");

final _clearRichPresence = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
),
    void Function(
  Pointer<ISteamFriends>,
)>("SteamAPI_ISteamFriends_ClearRichPresence");

final _getFriendRichPresence = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_GetFriendRichPresence");

final _getFriendRichPresenceKeyCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendRichPresenceKeyCount");

final _getFriendRichPresenceKeyByIndex = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Int,
),
    Pointer<Utf8> Function(
  Pointer<ISteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetFriendRichPresenceKeyByIndex");

final _requestFriendRichPresence = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_RequestFriendRichPresence");

final _inviteUserToGame = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_InviteUserToGame");

final _getCoplayFriendCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
),
    int Function(
  Pointer<ISteamFriends>,
)>("SteamAPI_ISteamFriends_GetCoplayFriendCount");

final _getCoplayFriend = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  Int,
),
    CSteamId Function(
  Pointer<ISteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_GetCoplayFriend");

final _getFriendCoplayTime = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendCoplayTime");

final _getFriendCoplayGame = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    AppId Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFriendCoplayGame");

final _joinClanChatRoom = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_JoinClanChatRoom");

final _leaveClanChatRoom = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_LeaveClanChatRoom");

final _getClanChatMemberCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetClanChatMemberCount");

final _getChatMemberByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Int,
),
    CSteamId Function(
  Pointer<ISteamFriends>,
  CSteamId,
  int,
)>("SteamAPI_ISteamFriends_GetChatMemberByIndex");

final _sendClanChatMessage = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_SendClanChatMessage");

final _getClanChatMessage = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Int,
  Pointer<Void>,
  Int,
  Pointer<Int32>,
  Pointer<UnsignedLongLong>,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
  int,
  Pointer<Void>,
  int,
  Pointer<Int32>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamFriends_GetClanChatMessage");

final _isClanChatAdmin = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsClanChatAdmin");

final _isClanChatWindowOpenInSteam = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsClanChatWindowOpenInSteam");

final _openClanChatWindowInSteam = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_OpenClanChatWindowInSteam");

final _closeClanChatWindowInSteam = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_CloseClanChatWindowInSteam");

final _setListenForFriendsMessages = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  Bool,
),
    bool Function(
  Pointer<ISteamFriends>,
  bool,
)>("SteamAPI_ISteamFriends_SetListenForFriendsMessages");

final _replyToFriendMessage = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_ReplyToFriendMessage");

final _getFriendMessage = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
  Int,
  Pointer<Void>,
  Int,
  Pointer<Int32>,
),
    int Function(
  Pointer<ISteamFriends>,
  CSteamId,
  int,
  Pointer<Void>,
  int,
  Pointer<Int32>,
)>("SteamAPI_ISteamFriends_GetFriendMessage");

final _getFollowerCount = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_GetFollowerCount");

final _isFollowing = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsFollowing");

final _enumerateFollowingList = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamFriends>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamFriends>,
  int,
)>("SteamAPI_ISteamFriends_EnumerateFollowingList");

final _isClanPublic = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsClanPublic");

final _isClanOfficialGameGroup = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_IsClanOfficialGameGroup");

final _getNumChatsWithUnreadPriorityMessages = dl.lookupFunction<
    Int Function(
  Pointer<ISteamFriends>,
),
    int Function(
  Pointer<ISteamFriends>,
)>("SteamAPI_ISteamFriends_GetNumChatsWithUnreadPriorityMessages");

final _activateGameOverlayRemotePlayTogetherInviteDialog = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamFriends>,
  CSteamId,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayRemotePlayTogetherInviteDialog");

final _registerProtocolInOverlayBrowser = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_RegisterProtocolInOverlayBrowser");

final _activateGameOverlayInviteDialogConnectString = dl.lookupFunction<
    Void Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamFriends>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialogConnectString");

extension ISteamFriendsExtensions on Pointer<ISteamFriends> {
  Pointer<Utf8> getPersonaName() => _getPersonaName.call(
        this,
      );

  SteamApiCall setPersonaName(
    Pointer<Utf8> personaName,
  ) =>
      _setPersonaName.call(
        this,
        personaName,
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
    CSteamId steamIdFriend,
  ) =>
      _getFriendRelationship.call(
        this,
        steamIdFriend,
      );

  EPersonaState getFriendPersonaState(
    CSteamId steamIdFriend,
  ) =>
      _getFriendPersonaState.call(
        this,
        steamIdFriend,
      );

  Pointer<Utf8> getFriendPersonaName(
    CSteamId steamIdFriend,
  ) =>
      _getFriendPersonaName.call(
        this,
        steamIdFriend,
      );

  bool getFriendGamePlayed(
    CSteamId steamIdFriend,
    Pointer<FriendGameInfo> pFriendGameInfo,
  ) =>
      _getFriendGamePlayed.call(
        this,
        steamIdFriend,
        pFriendGameInfo,
      );

  Pointer<Utf8> getFriendPersonaNameHistory(
    CSteamId steamIdFriend,
    int iPersonaName,
  ) =>
      _getFriendPersonaNameHistory.call(
        this,
        steamIdFriend,
        iPersonaName,
      );

  int getFriendSteamLevel(
    CSteamId steamIdFriend,
  ) =>
      _getFriendSteamLevel.call(
        this,
        steamIdFriend,
      );

  Pointer<Utf8> getPlayerNickname(
    CSteamId steamIdPlayer,
  ) =>
      _getPlayerNickname.call(
        this,
        steamIdPlayer,
      );

  int getFriendsGroupCount() => _getFriendsGroupCount.call(
        this,
      );

  FriendsGroupId getFriendsGroupIdByIndex(
    int iFG,
  ) =>
      _getFriendsGroupIdByIndex.call(
        this,
        iFG,
      );

  Pointer<Utf8> getFriendsGroupName(
    FriendsGroupId friendsGroupId,
  ) =>
      _getFriendsGroupName.call(
        this,
        friendsGroupId,
      );

  int getFriendsGroupMembersCount(
    FriendsGroupId friendsGroupId,
  ) =>
      _getFriendsGroupMembersCount.call(
        this,
        friendsGroupId,
      );

  void getFriendsGroupMembersList(
    FriendsGroupId friendsGroupId,
    Pointer<UnsignedLongLong> pOutSteamIdMembers,
    int nMembersCount,
  ) =>
      _getFriendsGroupMembersList.call(
        this,
        friendsGroupId,
        pOutSteamIdMembers,
        nMembersCount,
      );

  bool hasFriend(
    CSteamId steamIdFriend,
    int iFriendFlags,
  ) =>
      _hasFriend.call(
        this,
        steamIdFriend,
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
    CSteamId steamIdClan,
  ) =>
      _getClanName.call(
        this,
        steamIdClan,
      );

  Pointer<Utf8> getClanTag(
    CSteamId steamIdClan,
  ) =>
      _getClanTag.call(
        this,
        steamIdClan,
      );

  bool getClanActivityCounts(
    CSteamId steamIdClan,
    Pointer<Int> pnOnline,
    Pointer<Int> pnInGame,
    Pointer<Int> pnChatting,
  ) =>
      _getClanActivityCounts.call(
        this,
        steamIdClan,
        pnOnline,
        pnInGame,
        pnChatting,
      );

  SteamApiCall downloadClanActivityCounts(
    Pointer<UnsignedLongLong> psteamIdClans,
    int cClansToRequest,
  ) =>
      _downloadClanActivityCounts.call(
        this,
        psteamIdClans,
        cClansToRequest,
      );

  int getFriendCountFromSource(
    CSteamId steamIdSource,
  ) =>
      _getFriendCountFromSource.call(
        this,
        steamIdSource,
      );

  CSteamId getFriendFromSourceByIndex(
    CSteamId steamIdSource,
    int iFriend,
  ) =>
      _getFriendFromSourceByIndex.call(
        this,
        steamIdSource,
        iFriend,
      );

  bool isUserInSource(
    CSteamId steamIdUser,
    CSteamId steamIdSource,
  ) =>
      _isUserInSource.call(
        this,
        steamIdUser,
        steamIdSource,
      );

  void setInGameVoiceSpeaking(
    CSteamId steamIdUser,
    bool speaking,
  ) =>
      _setInGameVoiceSpeaking.call(
        this,
        steamIdUser,
        speaking,
      );

  void activateGameOverlay(
    Pointer<Utf8> dialog,
  ) =>
      _activateGameOverlay.call(
        this,
        dialog,
      );

  void activateGameOverlayToUser(
    Pointer<Utf8> dialog,
    CSteamId steamId,
  ) =>
      _activateGameOverlayToUser.call(
        this,
        dialog,
        steamId,
      );

  void activateGameOverlayToWebPage(
    Pointer<Utf8> url,
    EActivateGameOverlayToWebPageMode mode,
  ) =>
      _activateGameOverlayToWebPage.call(
        this,
        url,
        mode,
      );

  void activateGameOverlayToStore(
    AppId nAppId,
    EOverlayToStoreFlag flag,
  ) =>
      _activateGameOverlayToStore.call(
        this,
        nAppId,
        flag,
      );

  void setPlayedWith(
    CSteamId steamIdUserPlayedWith,
  ) =>
      _setPlayedWith.call(
        this,
        steamIdUserPlayedWith,
      );

  void activateGameOverlayInviteDialog(
    CSteamId steamIdLobby,
  ) =>
      _activateGameOverlayInviteDialog.call(
        this,
        steamIdLobby,
      );

  int getSmallFriendAvatar(
    CSteamId steamIdFriend,
  ) =>
      _getSmallFriendAvatar.call(
        this,
        steamIdFriend,
      );

  int getMediumFriendAvatar(
    CSteamId steamIdFriend,
  ) =>
      _getMediumFriendAvatar.call(
        this,
        steamIdFriend,
      );

  int getLargeFriendAvatar(
    CSteamId steamIdFriend,
  ) =>
      _getLargeFriendAvatar.call(
        this,
        steamIdFriend,
      );

  bool requestUserInformation(
    CSteamId steamIdUser,
    bool requireNameOnly,
  ) =>
      _requestUserInformation.call(
        this,
        steamIdUser,
        requireNameOnly,
      );

  SteamApiCall requestClanOfficerList(
    CSteamId steamIdClan,
  ) =>
      _requestClanOfficerList.call(
        this,
        steamIdClan,
      );

  CSteamId getClanOwner(
    CSteamId steamIdClan,
  ) =>
      _getClanOwner.call(
        this,
        steamIdClan,
      );

  int getClanOfficerCount(
    CSteamId steamIdClan,
  ) =>
      _getClanOfficerCount.call(
        this,
        steamIdClan,
      );

  CSteamId getClanOfficerByIndex(
    CSteamId steamIdClan,
    int iOfficer,
  ) =>
      _getClanOfficerByIndex.call(
        this,
        steamIdClan,
        iOfficer,
      );

  int getUserRestrictions() => _getUserRestrictions.call(
        this,
      );

  bool setRichPresence(
    Pointer<Utf8> key,
    Pointer<Utf8> value,
  ) =>
      _setRichPresence.call(
        this,
        key,
        value,
      );

  void clearRichPresence() => _clearRichPresence.call(
        this,
      );

  Pointer<Utf8> getFriendRichPresence(
    CSteamId steamIdFriend,
    Pointer<Utf8> key,
  ) =>
      _getFriendRichPresence.call(
        this,
        steamIdFriend,
        key,
      );

  int getFriendRichPresenceKeyCount(
    CSteamId steamIdFriend,
  ) =>
      _getFriendRichPresenceKeyCount.call(
        this,
        steamIdFriend,
      );

  Pointer<Utf8> getFriendRichPresenceKeyByIndex(
    CSteamId steamIdFriend,
    int iKey,
  ) =>
      _getFriendRichPresenceKeyByIndex.call(
        this,
        steamIdFriend,
        iKey,
      );

  void requestFriendRichPresence(
    CSteamId steamIdFriend,
  ) =>
      _requestFriendRichPresence.call(
        this,
        steamIdFriend,
      );

  bool inviteUserToGame(
    CSteamId steamIdFriend,
    Pointer<Utf8> connectString,
  ) =>
      _inviteUserToGame.call(
        this,
        steamIdFriend,
        connectString,
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
    CSteamId steamIdFriend,
  ) =>
      _getFriendCoplayTime.call(
        this,
        steamIdFriend,
      );

  AppId getFriendCoplayGame(
    CSteamId steamIdFriend,
  ) =>
      _getFriendCoplayGame.call(
        this,
        steamIdFriend,
      );

  SteamApiCall joinClanChatRoom(
    CSteamId steamIdClan,
  ) =>
      _joinClanChatRoom.call(
        this,
        steamIdClan,
      );

  bool leaveClanChatRoom(
    CSteamId steamIdClan,
  ) =>
      _leaveClanChatRoom.call(
        this,
        steamIdClan,
      );

  int getClanChatMemberCount(
    CSteamId steamIdClan,
  ) =>
      _getClanChatMemberCount.call(
        this,
        steamIdClan,
      );

  CSteamId getChatMemberByIndex(
    CSteamId steamIdClan,
    int iUser,
  ) =>
      _getChatMemberByIndex.call(
        this,
        steamIdClan,
        iUser,
      );

  bool sendClanChatMessage(
    CSteamId steamIdClanChat,
    Pointer<Utf8> text,
  ) =>
      _sendClanChatMessage.call(
        this,
        steamIdClanChat,
        text,
      );

  int getClanChatMessage(
    CSteamId steamIdClanChat,
    int iMessage,
    Pointer<Void> prgchText,
    int cchTextMax,
    Pointer<Int32> peChatEntryType,
    Pointer<UnsignedLongLong> psteamidChatter,
  ) =>
      _getClanChatMessage.call(
        this,
        steamIdClanChat,
        iMessage,
        prgchText,
        cchTextMax,
        peChatEntryType,
        psteamidChatter,
      );

  bool isClanChatAdmin(
    CSteamId steamIdClanChat,
    CSteamId steamIdUser,
  ) =>
      _isClanChatAdmin.call(
        this,
        steamIdClanChat,
        steamIdUser,
      );

  bool isClanChatWindowOpenInSteam(
    CSteamId steamIdClanChat,
  ) =>
      _isClanChatWindowOpenInSteam.call(
        this,
        steamIdClanChat,
      );

  bool openClanChatWindowInSteam(
    CSteamId steamIdClanChat,
  ) =>
      _openClanChatWindowInSteam.call(
        this,
        steamIdClanChat,
      );

  bool closeClanChatWindowInSteam(
    CSteamId steamIdClanChat,
  ) =>
      _closeClanChatWindowInSteam.call(
        this,
        steamIdClanChat,
      );

  bool setListenForFriendsMessages(
    bool interceptEnabled,
  ) =>
      _setListenForFriendsMessages.call(
        this,
        interceptEnabled,
      );

  bool replyToFriendMessage(
    CSteamId steamIdFriend,
    Pointer<Utf8> msgToSend,
  ) =>
      _replyToFriendMessage.call(
        this,
        steamIdFriend,
        msgToSend,
      );

  int getFriendMessage(
    CSteamId steamIdFriend,
    int iMessageId,
    Pointer<Void> pvData,
    int cubData,
    Pointer<Int32> peChatEntryType,
  ) =>
      _getFriendMessage.call(
        this,
        steamIdFriend,
        iMessageId,
        pvData,
        cubData,
        peChatEntryType,
      );

  SteamApiCall getFollowerCount(
    CSteamId steamId,
  ) =>
      _getFollowerCount.call(
        this,
        steamId,
      );

  SteamApiCall isFollowing(
    CSteamId steamId,
  ) =>
      _isFollowing.call(
        this,
        steamId,
      );

  SteamApiCall enumerateFollowingList(
    int startIndex,
  ) =>
      _enumerateFollowingList.call(
        this,
        startIndex,
      );

  bool isClanPublic(
    CSteamId steamIdClan,
  ) =>
      _isClanPublic.call(
        this,
        steamIdClan,
      );

  bool isClanOfficialGameGroup(
    CSteamId steamIdClan,
  ) =>
      _isClanOfficialGameGroup.call(
        this,
        steamIdClan,
      );

  int getNumChatsWithUnreadPriorityMessages() =>
      _getNumChatsWithUnreadPriorityMessages.call(
        this,
      );

  void activateGameOverlayRemotePlayTogetherInviteDialog(
    CSteamId steamIdLobby,
  ) =>
      _activateGameOverlayRemotePlayTogetherInviteDialog.call(
        this,
        steamIdLobby,
      );

  bool registerProtocolInOverlayBrowser(
    Pointer<Utf8> protocol,
  ) =>
      _registerProtocolInOverlayBrowser.call(
        this,
        protocol,
      );

  void activateGameOverlayInviteDialogConnectString(
    Pointer<Utf8> connectString,
  ) =>
      _activateGameOverlayInviteDialogConnectString.call(
        this,
        connectString,
      );
}
