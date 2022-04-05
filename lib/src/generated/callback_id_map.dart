// ignore_for_file: public_member_api_docs
import "callback_structs/active_beacons_updated.dart";
import "callback_structs/add_app_dependency_result.dart";
import "callback_structs/add_ugc_dependency_result.dart";
import "callback_structs/app_proof_of_purchase_key_response.dart";
import "callback_structs/app_resuming_from_suspend.dart";
import "callback_structs/associate_with_clan_result.dart";
import "callback_structs/available_beacon_locations_updated.dart";
import "callback_structs/avatar_image_loaded.dart";
import "callback_structs/change_num_open_slots_callback.dart";
import "callback_structs/check_file_signature.dart";
import "callback_structs/clan_officer_list_response.dart";
import "callback_structs/client_game_server_deny.dart";
import "callback_structs/compute_new_player_compatibility_result.dart";
import "callback_structs/create_beacon_callback.dart";
import "callback_structs/create_item_result.dart";
import "callback_structs/delete_item_result.dart";
import "callback_structs/dlc_installed.dart";
import "callback_structs/download_clan_activity_counts_result.dart";
import "callback_structs/download_item_result.dart";
import "callback_structs/duration_control.dart";
import "callback_structs/encrypted_app_ticket_response.dart";
import "callback_structs/end_game_result_callback.dart";
import "callback_structs/favorites_list_accounts_updated.dart";
import "callback_structs/favorites_list_changed.dart";
import "callback_structs/file_details_result.dart";
import "callback_structs/floating_gamepad_text_input_dismissed.dart";
import "callback_structs/friend_rich_presence_update.dart";
import "callback_structs/friends_enumerate_following_list.dart";
import "callback_structs/friends_get_follower_count.dart";
import "callback_structs/friends_is_following.dart";
import "callback_structs/game_connected_chat_join.dart";
import "callback_structs/game_connected_chat_leave.dart";
import "callback_structs/game_connected_clan_chat_msg.dart";
import "callback_structs/game_connected_friend_chat_msg.dart";
import "callback_structs/game_lobby_join_requested.dart";
import "callback_structs/game_overlay_activated.dart";
import "callback_structs/game_rich_presence_join_requested.dart";
import "callback_structs/game_server_change_requested.dart";
import "callback_structs/game_web_callback.dart";
import "callback_structs/gamepad_text_input_dismissed.dart";
import "callback_structs/get_app_dependencies_result.dart";
import "callback_structs/get_auth_session_ticket_response.dart";
import "callback_structs/get_opf_settings_result.dart";
import "callback_structs/get_user_item_vote_result.dart";
import "callback_structs/get_video_url_result.dart";
import "callback_structs/global_achievement_percentages_ready.dart";
import "callback_structs/global_stats_received.dart";
import "callback_structs/gs_client_achievement_status.dart";
import "callback_structs/gs_client_approve.dart";
import "callback_structs/gs_client_deny.dart";
import "callback_structs/gs_client_group_status.dart";
import "callback_structs/gs_client_kick.dart";
import "callback_structs/gs_gameplay_stats.dart";
import "callback_structs/gs_policy_response.dart";
import "callback_structs/gs_reputation.dart";
import "callback_structs/gs_stats_received.dart";
import "callback_structs/gs_stats_stored.dart";
import "callback_structs/gs_stats_unloaded.dart";
import "callback_structs/html_browser_ready.dart";
import "callback_structs/html_browser_restarted.dart";
import "callback_structs/html_can_go_back_and_forward.dart";
import "callback_structs/html_changed_title.dart";
import "callback_structs/html_close_browser.dart";
import "callback_structs/html_file_open_dialog.dart";
import "callback_structs/html_finished_request.dart";
import "callback_structs/html_hide_tool_tip.dart";
import "callback_structs/html_horizontal_scroll.dart";
import "callback_structs/html_js_alert.dart";
import "callback_structs/html_js_confirm.dart";
import "callback_structs/html_link_at_position.dart";
import "callback_structs/html_needs_paint.dart";
import "callback_structs/html_new_window.dart";
import "callback_structs/html_open_link_in_new_tab.dart";
import "callback_structs/html_search_results.dart";
import "callback_structs/html_set_cursor.dart";
import "callback_structs/html_show_tool_tip.dart";
import "callback_structs/html_start_request.dart";
import "callback_structs/html_status_text.dart";
import "callback_structs/html_update_tool_tip.dart";
import "callback_structs/html_url_changed.dart";
import "callback_structs/html_vertical_scroll.dart";
import "callback_structs/http_request_completed.dart";
import "callback_structs/http_request_data_received.dart";
import "callback_structs/http_request_headers_received.dart";
import "callback_structs/ipc_failure.dart";
import "callback_structs/ipcountry.dart";
import "callback_structs/item_installed.dart";
import "callback_structs/join_clan_chat_room_completion_result.dart";
import "callback_structs/join_party_callback.dart";
import "callback_structs/leaderboard_find_result.dart";
import "callback_structs/leaderboard_score_uploaded.dart";
import "callback_structs/leaderboard_scores_downloaded.dart";
import "callback_structs/leaderboard_ugc_set.dart";
import "callback_structs/licenses_updated.dart";
import "callback_structs/lobby_chat_msg.dart";
import "callback_structs/lobby_chat_update.dart";
import "callback_structs/lobby_created.dart";
import "callback_structs/lobby_data_update.dart";
import "callback_structs/lobby_enter.dart";
import "callback_structs/lobby_game_created.dart";
import "callback_structs/lobby_invite.dart";
import "callback_structs/lobby_kicked.dart";
import "callback_structs/lobby_match_list.dart";
import "callback_structs/low_battery_power.dart";
import "callback_structs/market_eligibility_response.dart";
import "callback_structs/micro_txn_authorization_response.dart";
import "callback_structs/music_player_remote_to_front.dart";
import "callback_structs/music_player_remote_will_activate.dart";
import "callback_structs/music_player_remote_will_deactivate.dart";
import "callback_structs/music_player_selects_playlist_entry.dart";
import "callback_structs/music_player_selects_queue_entry.dart";
import "callback_structs/music_player_wants_looped.dart";
import "callback_structs/music_player_wants_pause.dart";
import "callback_structs/music_player_wants_play.dart";
import "callback_structs/music_player_wants_play_next.dart";
import "callback_structs/music_player_wants_play_previous.dart";
import "callback_structs/music_player_wants_playing_repeat_status.dart";
import "callback_structs/music_player_wants_shuffled.dart";
import "callback_structs/music_player_wants_volume.dart";
import "callback_structs/music_player_will_quit.dart";
import "callback_structs/new_url_launch_parameters.dart";
import "callback_structs/number_of_current_players.dart";
import "callback_structs/overlay_browser_protocol_navigation.dart";
import "callback_structs/p2p_session_connect_fail.dart";
import "callback_structs/p2p_session_request.dart";
import "callback_structs/persona_state_change.dart";
import "callback_structs/playback_status_has_changed.dart";
import "callback_structs/ps3_trophies_installed.dart";
import "callback_structs/psn_game_boot_invite_result.dart";
import "callback_structs/register_activation_code_response.dart";
import "callback_structs/remote_storage_delete_published_file_result.dart";
import "callback_structs/remote_storage_download_ugc_result.dart";
import "callback_structs/remote_storage_enumerate_published_files_by_user_action_result.dart";
import "callback_structs/remote_storage_enumerate_user_published_files_result.dart";
import "callback_structs/remote_storage_enumerate_user_shared_workshop_files_result.dart";
import "callback_structs/remote_storage_enumerate_user_subscribed_files_result.dart";
import "callback_structs/remote_storage_enumerate_workshop_files_result.dart";
import "callback_structs/remote_storage_file_read_async_complete.dart";
import "callback_structs/remote_storage_file_share_result.dart";
import "callback_structs/remote_storage_file_write_async_complete.dart";
import "callback_structs/remote_storage_get_published_file_details_result.dart";
import "callback_structs/remote_storage_get_published_item_vote_details_result.dart";
import "callback_structs/remote_storage_local_file_change.dart";
import "callback_structs/remote_storage_publish_file_progress.dart";
import "callback_structs/remote_storage_publish_file_result.dart";
import "callback_structs/remote_storage_published_file_deleted.dart";
import "callback_structs/remote_storage_published_file_subscribed.dart";
import "callback_structs/remote_storage_published_file_unsubscribed.dart";
import "callback_structs/remote_storage_published_file_updated.dart";
import "callback_structs/remote_storage_set_user_published_file_action_result.dart";
import "callback_structs/remote_storage_subscribe_published_file_result.dart";
import "callback_structs/remote_storage_unsubscribe_published_file_result.dart";
import "callback_structs/remote_storage_update_published_file_result.dart";
import "callback_structs/remote_storage_update_user_published_item_vote_result.dart";
import "callback_structs/remote_storage_user_vote_details.dart";
import "callback_structs/remove_app_dependency_result.dart";
import "callback_structs/remove_ugc_dependency_result.dart";
import "callback_structs/request_players_for_game_final_result_callback.dart";
import "callback_structs/request_players_for_game_progress_callback.dart";
import "callback_structs/request_players_for_game_result_callback.dart";
import "callback_structs/reservation_notification_callback.dart";
import "callback_structs/screenshot_ready.dart";
import "callback_structs/screenshot_requested.dart";
import "callback_structs/search_for_game_progress_callback.dart";
import "callback_structs/search_for_game_result_callback.dart";
import "callback_structs/set_persona_name_response.dart";
import "callback_structs/set_user_item_vote_result.dart";
import "callback_structs/socket_status_callback.dart";
import "callback_structs/start_playtime_tracking_result.dart";
import "callback_structs/steam_api_call_completed.dart";
import "callback_structs/steam_app_installed.dart";
import "callback_structs/steam_app_uninstalled.dart";
import "callback_structs/steam_input_configuration_loaded.dart";
import "callback_structs/steam_input_device_connected.dart";
import "callback_structs/steam_input_device_disconnected.dart";
import "callback_structs/steam_inventory_definition_update.dart";
import "callback_structs/steam_inventory_eligible_promo_item_def_ids.dart";
import "callback_structs/steam_inventory_full_update.dart";
import "callback_structs/steam_inventory_request_prices_result.dart";
import "callback_structs/steam_inventory_result_ready.dart";
import "callback_structs/steam_inventory_start_purchase_result.dart";
import "callback_structs/steam_net_authentication_status.dart";
import "callback_structs/steam_net_connection_status_changed_callback.dart";
import "callback_structs/steam_networking_fake_ip_result.dart";
import "callback_structs/steam_networking_messages_session_failed.dart";
import "callback_structs/steam_networking_messages_session_request.dart";
import "callback_structs/steam_parental_settings_changed.dart";
import "callback_structs/steam_relay_network_status.dart";
import "callback_structs/steam_remote_play_session_connected.dart";
import "callback_structs/steam_remote_play_session_disconnected.dart";
import "callback_structs/steam_server_connect_failure.dart";
import "callback_structs/steam_servers_connected.dart";
import "callback_structs/steam_servers_disconnected.dart";
import "callback_structs/steam_shutdown.dart";
import "callback_structs/steam_ugc_query_completed.dart";
import "callback_structs/steam_ugc_request_ugc_details_result.dart";
import "callback_structs/stop_playtime_tracking_result.dart";
import "callback_structs/store_auth_url_response.dart";
import "callback_structs/submit_item_update_result.dart";
import "callback_structs/submit_player_result_result_callback.dart";
import "callback_structs/timed_trial_status.dart";
import "callback_structs/unread_chat_messages_changed.dart";
import "callback_structs/user_achievement_icon_fetched.dart";
import "callback_structs/user_achievement_stored.dart";
import "callback_structs/user_favorite_items_list_changed.dart";
import "callback_structs/user_stats_received.dart";
import "callback_structs/user_stats_stored.dart";
import "callback_structs/user_stats_unloaded.dart";
import "callback_structs/user_subscribed_items_list_changed.dart";
import "callback_structs/validate_auth_ticket_response.dart";
import "callback_structs/volume_has_changed.dart";
import "callback_structs/workshop_eula_status.dart";

Map<Type, int> callbackIdMapByType = {
  SteamServersConnected: SteamServersConnected.callbackId,
  SteamServerConnectFailure: SteamServerConnectFailure.callbackId,
  SteamServersDisconnected: SteamServersDisconnected.callbackId,
  ClientGameServerDeny: ClientGameServerDeny.callbackId,
  IpcFailure: IpcFailure.callbackId,
  LicensesUpdated: LicensesUpdated.callbackId,
  ValidateAuthTicketResponse: ValidateAuthTicketResponse.callbackId,
  MicroTxnAuthorizationResponse: MicroTxnAuthorizationResponse.callbackId,
  EncryptedAppTicketResponse: EncryptedAppTicketResponse.callbackId,
  GetAuthSessionTicketResponse: GetAuthSessionTicketResponse.callbackId,
  GameWebCallback: GameWebCallback.callbackId,
  StoreAuthUrlResponse: StoreAuthUrlResponse.callbackId,
  MarketEligibilityResponse: MarketEligibilityResponse.callbackId,
  DurationControl: DurationControl.callbackId,
  PersonaStateChange: PersonaStateChange.callbackId,
  GameOverlayActivated: GameOverlayActivated.callbackId,
  GameServerChangeRequested: GameServerChangeRequested.callbackId,
  GameLobbyJoinRequested: GameLobbyJoinRequested.callbackId,
  AvatarImageLoaded: AvatarImageLoaded.callbackId,
  ClanOfficerListResponse: ClanOfficerListResponse.callbackId,
  FriendRichPresenceUpdate: FriendRichPresenceUpdate.callbackId,
  GameRichPresenceJoinRequested: GameRichPresenceJoinRequested.callbackId,
  GameConnectedClanChatMsg: GameConnectedClanChatMsg.callbackId,
  GameConnectedChatJoin: GameConnectedChatJoin.callbackId,
  GameConnectedChatLeave: GameConnectedChatLeave.callbackId,
  DownloadClanActivityCountsResult: DownloadClanActivityCountsResult.callbackId,
  JoinClanChatRoomCompletionResult: JoinClanChatRoomCompletionResult.callbackId,
  GameConnectedFriendChatMsg: GameConnectedFriendChatMsg.callbackId,
  FriendsGetFollowerCount: FriendsGetFollowerCount.callbackId,
  FriendsIsFollowing: FriendsIsFollowing.callbackId,
  FriendsEnumerateFollowingList: FriendsEnumerateFollowingList.callbackId,
  SetPersonaNameResponse: SetPersonaNameResponse.callbackId,
  UnreadChatMessagesChanged: UnreadChatMessagesChanged.callbackId,
  OverlayBrowserProtocolNavigation: OverlayBrowserProtocolNavigation.callbackId,
  Ipcountry: Ipcountry.callbackId,
  LowBatteryPower: LowBatteryPower.callbackId,
  SteamApiCallCompleted: SteamApiCallCompleted.callbackId,
  SteamShutdown: SteamShutdown.callbackId,
  CheckFileSignature: CheckFileSignature.callbackId,
  GamepadTextInputDismissed: GamepadTextInputDismissed.callbackId,
  AppResumingFromSuspend: AppResumingFromSuspend.callbackId,
  FloatingGamepadTextInputDismissed:
      FloatingGamepadTextInputDismissed.callbackId,
  FavoritesListChanged: FavoritesListChanged.callbackId,
  LobbyInvite: LobbyInvite.callbackId,
  LobbyEnter: LobbyEnter.callbackId,
  LobbyDataUpdate: LobbyDataUpdate.callbackId,
  LobbyChatUpdate: LobbyChatUpdate.callbackId,
  LobbyChatMsg: LobbyChatMsg.callbackId,
  LobbyGameCreated: LobbyGameCreated.callbackId,
  LobbyMatchList: LobbyMatchList.callbackId,
  LobbyKicked: LobbyKicked.callbackId,
  LobbyCreated: LobbyCreated.callbackId,
  PsnGameBootInviteResult: PsnGameBootInviteResult.callbackId,
  FavoritesListAccountsUpdated: FavoritesListAccountsUpdated.callbackId,
  SearchForGameProgressCallback: SearchForGameProgressCallback.callbackId,
  SearchForGameResultCallback: SearchForGameResultCallback.callbackId,
  RequestPlayersForGameProgressCallback:
      RequestPlayersForGameProgressCallback.callbackId,
  RequestPlayersForGameResultCallback:
      RequestPlayersForGameResultCallback.callbackId,
  RequestPlayersForGameFinalResultCallback:
      RequestPlayersForGameFinalResultCallback.callbackId,
  SubmitPlayerResultResultCallback: SubmitPlayerResultResultCallback.callbackId,
  EndGameResultCallback: EndGameResultCallback.callbackId,
  JoinPartyCallback: JoinPartyCallback.callbackId,
  CreateBeaconCallback: CreateBeaconCallback.callbackId,
  ReservationNotificationCallback: ReservationNotificationCallback.callbackId,
  ChangeNumOpenSlotsCallback: ChangeNumOpenSlotsCallback.callbackId,
  AvailableBeaconLocationsUpdated: AvailableBeaconLocationsUpdated.callbackId,
  ActiveBeaconsUpdated: ActiveBeaconsUpdated.callbackId,
  RemoteStorageFileShareResult: RemoteStorageFileShareResult.callbackId,
  RemoteStoragePublishFileResult: RemoteStoragePublishFileResult.callbackId,
  RemoteStorageDeletePublishedFileResult:
      RemoteStorageDeletePublishedFileResult.callbackId,
  RemoteStorageEnumerateUserPublishedFilesResult:
      RemoteStorageEnumerateUserPublishedFilesResult.callbackId,
  RemoteStorageSubscribePublishedFileResult:
      RemoteStorageSubscribePublishedFileResult.callbackId,
  RemoteStorageEnumerateUserSubscribedFilesResult:
      RemoteStorageEnumerateUserSubscribedFilesResult.callbackId,
  RemoteStorageUnsubscribePublishedFileResult:
      RemoteStorageUnsubscribePublishedFileResult.callbackId,
  RemoteStorageUpdatePublishedFileResult:
      RemoteStorageUpdatePublishedFileResult.callbackId,
  RemoteStorageDownloadUgcResult: RemoteStorageDownloadUgcResult.callbackId,
  RemoteStorageGetPublishedFileDetailsResult:
      RemoteStorageGetPublishedFileDetailsResult.callbackId,
  RemoteStorageEnumerateWorkshopFilesResult:
      RemoteStorageEnumerateWorkshopFilesResult.callbackId,
  RemoteStorageGetPublishedItemVoteDetailsResult:
      RemoteStorageGetPublishedItemVoteDetailsResult.callbackId,
  RemoteStoragePublishedFileSubscribed:
      RemoteStoragePublishedFileSubscribed.callbackId,
  RemoteStoragePublishedFileUnsubscribed:
      RemoteStoragePublishedFileUnsubscribed.callbackId,
  RemoteStoragePublishedFileDeleted:
      RemoteStoragePublishedFileDeleted.callbackId,
  RemoteStorageUpdateUserPublishedItemVoteResult:
      RemoteStorageUpdateUserPublishedItemVoteResult.callbackId,
  RemoteStorageUserVoteDetails: RemoteStorageUserVoteDetails.callbackId,
  RemoteStorageEnumerateUserSharedWorkshopFilesResult:
      RemoteStorageEnumerateUserSharedWorkshopFilesResult.callbackId,
  RemoteStorageSetUserPublishedFileActionResult:
      RemoteStorageSetUserPublishedFileActionResult.callbackId,
  RemoteStorageEnumeratePublishedFilesByUserActionResult:
      RemoteStorageEnumeratePublishedFilesByUserActionResult.callbackId,
  RemoteStoragePublishFileProgress: RemoteStoragePublishFileProgress.callbackId,
  RemoteStoragePublishedFileUpdated:
      RemoteStoragePublishedFileUpdated.callbackId,
  RemoteStorageFileWriteAsyncComplete:
      RemoteStorageFileWriteAsyncComplete.callbackId,
  RemoteStorageFileReadAsyncComplete:
      RemoteStorageFileReadAsyncComplete.callbackId,
  RemoteStorageLocalFileChange: RemoteStorageLocalFileChange.callbackId,
  UserStatsReceived: UserStatsReceived.callbackId,
  UserStatsStored: UserStatsStored.callbackId,
  UserAchievementStored: UserAchievementStored.callbackId,
  LeaderboardFindResult: LeaderboardFindResult.callbackId,
  LeaderboardScoresDownloaded: LeaderboardScoresDownloaded.callbackId,
  LeaderboardScoreUploaded: LeaderboardScoreUploaded.callbackId,
  NumberOfCurrentPlayers: NumberOfCurrentPlayers.callbackId,
  UserStatsUnloaded: UserStatsUnloaded.callbackId,
  UserAchievementIconFetched: UserAchievementIconFetched.callbackId,
  GlobalAchievementPercentagesReady:
      GlobalAchievementPercentagesReady.callbackId,
  LeaderboardUgcSet: LeaderboardUgcSet.callbackId,
  Ps3TrophiesInstalled: Ps3TrophiesInstalled.callbackId,
  GlobalStatsReceived: GlobalStatsReceived.callbackId,
  DlcInstalled: DlcInstalled.callbackId,
  RegisterActivationCodeResponse: RegisterActivationCodeResponse.callbackId,
  NewUrlLaunchParameters: NewUrlLaunchParameters.callbackId,
  AppProofOfPurchaseKeyResponse: AppProofOfPurchaseKeyResponse.callbackId,
  FileDetailsResult: FileDetailsResult.callbackId,
  TimedTrialStatus: TimedTrialStatus.callbackId,
  P2pSessionRequest: P2pSessionRequest.callbackId,
  P2pSessionConnectFail: P2pSessionConnectFail.callbackId,
  SocketStatusCallback: SocketStatusCallback.callbackId,
  ScreenshotReady: ScreenshotReady.callbackId,
  ScreenshotRequested: ScreenshotRequested.callbackId,
  PlaybackStatusHasChanged: PlaybackStatusHasChanged.callbackId,
  VolumeHasChanged: VolumeHasChanged.callbackId,
  MusicPlayerRemoteWillActivate: MusicPlayerRemoteWillActivate.callbackId,
  MusicPlayerRemoteWillDeactivate: MusicPlayerRemoteWillDeactivate.callbackId,
  MusicPlayerRemoteToFront: MusicPlayerRemoteToFront.callbackId,
  MusicPlayerWillQuit: MusicPlayerWillQuit.callbackId,
  MusicPlayerWantsPlay: MusicPlayerWantsPlay.callbackId,
  MusicPlayerWantsPause: MusicPlayerWantsPause.callbackId,
  MusicPlayerWantsPlayPrevious: MusicPlayerWantsPlayPrevious.callbackId,
  MusicPlayerWantsPlayNext: MusicPlayerWantsPlayNext.callbackId,
  MusicPlayerWantsShuffled: MusicPlayerWantsShuffled.callbackId,
  MusicPlayerWantsLooped: MusicPlayerWantsLooped.callbackId,
  MusicPlayerWantsVolume: MusicPlayerWantsVolume.callbackId,
  MusicPlayerSelectsQueueEntry: MusicPlayerSelectsQueueEntry.callbackId,
  MusicPlayerSelectsPlaylistEntry: MusicPlayerSelectsPlaylistEntry.callbackId,
  MusicPlayerWantsPlayingRepeatStatus:
      MusicPlayerWantsPlayingRepeatStatus.callbackId,
  HttpRequestCompleted: HttpRequestCompleted.callbackId,
  HttpRequestHeadersReceived: HttpRequestHeadersReceived.callbackId,
  HttpRequestDataReceived: HttpRequestDataReceived.callbackId,
  SteamInputDeviceConnected: SteamInputDeviceConnected.callbackId,
  SteamInputDeviceDisconnected: SteamInputDeviceDisconnected.callbackId,
  SteamInputConfigurationLoaded: SteamInputConfigurationLoaded.callbackId,
  SteamUgcQueryCompleted: SteamUgcQueryCompleted.callbackId,
  SteamUgcRequestUgcDetailsResult: SteamUgcRequestUgcDetailsResult.callbackId,
  CreateItemResult: CreateItemResult.callbackId,
  SubmitItemUpdateResult: SubmitItemUpdateResult.callbackId,
  ItemInstalled: ItemInstalled.callbackId,
  DownloadItemResult: DownloadItemResult.callbackId,
  UserFavoriteItemsListChanged: UserFavoriteItemsListChanged.callbackId,
  SetUserItemVoteResult: SetUserItemVoteResult.callbackId,
  GetUserItemVoteResult: GetUserItemVoteResult.callbackId,
  StartPlaytimeTrackingResult: StartPlaytimeTrackingResult.callbackId,
  StopPlaytimeTrackingResult: StopPlaytimeTrackingResult.callbackId,
  AddUgcDependencyResult: AddUgcDependencyResult.callbackId,
  RemoveUgcDependencyResult: RemoveUgcDependencyResult.callbackId,
  AddAppDependencyResult: AddAppDependencyResult.callbackId,
  RemoveAppDependencyResult: RemoveAppDependencyResult.callbackId,
  GetAppDependenciesResult: GetAppDependenciesResult.callbackId,
  DeleteItemResult: DeleteItemResult.callbackId,
  UserSubscribedItemsListChanged: UserSubscribedItemsListChanged.callbackId,
  WorkshopEulaStatus: WorkshopEulaStatus.callbackId,
  SteamAppInstalled: SteamAppInstalled.callbackId,
  SteamAppUninstalled: SteamAppUninstalled.callbackId,
  HtmlBrowserReady: HtmlBrowserReady.callbackId,
  HtmlNeedsPaint: HtmlNeedsPaint.callbackId,
  HtmlStartRequest: HtmlStartRequest.callbackId,
  HtmlCloseBrowser: HtmlCloseBrowser.callbackId,
  HtmlUrlChanged: HtmlUrlChanged.callbackId,
  HtmlFinishedRequest: HtmlFinishedRequest.callbackId,
  HtmlOpenLinkInNewTab: HtmlOpenLinkInNewTab.callbackId,
  HtmlChangedTitle: HtmlChangedTitle.callbackId,
  HtmlSearchResults: HtmlSearchResults.callbackId,
  HtmlCanGoBackAndForward: HtmlCanGoBackAndForward.callbackId,
  HtmlHorizontalScroll: HtmlHorizontalScroll.callbackId,
  HtmlVerticalScroll: HtmlVerticalScroll.callbackId,
  HtmlLinkAtPosition: HtmlLinkAtPosition.callbackId,
  HtmlJsAlert: HtmlJsAlert.callbackId,
  HtmlJsConfirm: HtmlJsConfirm.callbackId,
  HtmlFileOpenDialog: HtmlFileOpenDialog.callbackId,
  HtmlNewWindow: HtmlNewWindow.callbackId,
  HtmlSetCursor: HtmlSetCursor.callbackId,
  HtmlStatusText: HtmlStatusText.callbackId,
  HtmlShowToolTip: HtmlShowToolTip.callbackId,
  HtmlUpdateToolTip: HtmlUpdateToolTip.callbackId,
  HtmlHideToolTip: HtmlHideToolTip.callbackId,
  HtmlBrowserRestarted: HtmlBrowserRestarted.callbackId,
  SteamInventoryResultReady: SteamInventoryResultReady.callbackId,
  SteamInventoryFullUpdate: SteamInventoryFullUpdate.callbackId,
  SteamInventoryDefinitionUpdate: SteamInventoryDefinitionUpdate.callbackId,
  SteamInventoryEligiblePromoItemDefIds:
      SteamInventoryEligiblePromoItemDefIds.callbackId,
  SteamInventoryStartPurchaseResult:
      SteamInventoryStartPurchaseResult.callbackId,
  SteamInventoryRequestPricesResult:
      SteamInventoryRequestPricesResult.callbackId,
  GetVideoUrlResult: GetVideoUrlResult.callbackId,
  GetOpfSettingsResult: GetOpfSettingsResult.callbackId,
  SteamParentalSettingsChanged: SteamParentalSettingsChanged.callbackId,
  SteamRemotePlaySessionConnected: SteamRemotePlaySessionConnected.callbackId,
  SteamRemotePlaySessionDisconnected:
      SteamRemotePlaySessionDisconnected.callbackId,
  SteamNetworkingMessagesSessionRequest:
      SteamNetworkingMessagesSessionRequest.callbackId,
  SteamNetworkingMessagesSessionFailed:
      SteamNetworkingMessagesSessionFailed.callbackId,
  SteamNetConnectionStatusChangedCallback:
      SteamNetConnectionStatusChangedCallback.callbackId,
  SteamNetAuthenticationStatus: SteamNetAuthenticationStatus.callbackId,
  SteamRelayNetworkStatus: SteamRelayNetworkStatus.callbackId,
  GsClientApprove: GsClientApprove.callbackId,
  GsClientDeny: GsClientDeny.callbackId,
  GsClientKick: GsClientKick.callbackId,
  GsClientAchievementStatus: GsClientAchievementStatus.callbackId,
  GsPolicyResponse: GsPolicyResponse.callbackId,
  GsGameplayStats: GsGameplayStats.callbackId,
  GsClientGroupStatus: GsClientGroupStatus.callbackId,
  GsReputation: GsReputation.callbackId,
  AssociateWithClanResult: AssociateWithClanResult.callbackId,
  ComputeNewPlayerCompatibilityResult:
      ComputeNewPlayerCompatibilityResult.callbackId,
  GsStatsReceived: GsStatsReceived.callbackId,
  GsStatsStored: GsStatsStored.callbackId,
  GsStatsUnloaded: GsStatsUnloaded.callbackId,
  SteamNetworkingFakeIpResult: SteamNetworkingFakeIpResult.callbackId,
};
