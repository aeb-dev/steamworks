// ignore_for_file: public_member_api_docs
import "typedefs.dart";

class SteamConstants {
  static AppId get appIdInvalid => 0x0;
  static DepotId get depotIdInvalid => 0x0;
  static SteamApiCall get apiCallInvalid => 0x0;
  static PartyBeaconId get partyBeaconIdInvalid => 0;
  static HAuthTicket get hAuthTicketInvalid => 0;
  static int get steamAccountIdMask => 0xFFFFFFFF;
  static int get steamAccountInstanceMask => 0x000FFFFF;
  static int get steamUserDefaultInstance => 1;
  static int get gameExtraInfoMax => 64;
  static int get maxFriendsGroupName => 64;
  static int get friendsGroupLimit => 100;
  static FriendsGroupId get friendsGroupIdInvalid => 1;
  static int get enumerateFollowersMax => 50;
  static int get chatMetadataMax => 8192;
  static int get maxGameServerGameDir => 32;
  static int get maxGameServerMapName => 32;
  static int get maxGameServerGameDescription => 64;
  static int get maxGameServerName => 64;
  static int get maxGameServerTags => 128;
  static int get maxGameServerGameData => 2048;
  static int get hSERVERQUERYINVALId => 0xffffffff;
  static int get favoriteFlagNone => 0x00;
  static int get favoriteFlagFavorite => 0x01;
  static int get favoriteFlagHistory => 0x02;
  static int get maxCloudFileChunkSize => 100 * 1024 * 1024;
  static PublishedFileId get publishedFileIdInvalid => 0;
  static UgcHandle get ugcHandleInvalid => 0xffffffffffffffff;
  static PublishedFileUpdateHandle get publishedFileUpdateHandleInvalid =>
      0xffffffffffffffff;
  static UgcFileWriteStreamHandle get ugcFileStreamHandleInvalid =>
      0xffffffffffffffff;
  static int get publishedDocumentTitleMax => 128 + 1;
  static int get publishedDocumentDescriptionMax => 8000;
  static int get publishedDocumentChangeDescriptionMax => 8000;
  static int get enumeratePublishedFilesMaxResults => 50;
  static int get tagListMax => 1024 + 1;
  static int get filenameMax => 260;
  static int get publishedFileUrlMax => 256;
  static int get appProofOfPurchaseKeyMax => 240;
  static int get screenshotMaxTaggedUsers => 32;
  static int get screenshotMaxTaggedPublishedFiles => 32;
  static int get uFSTagTypeMax => 255;
  static int get uFSTagValueMax => 255;
  static int get screenshotThumbWidth => 200;
  static UgcQueryHandle get ugcQueryHandleInvalid => 0xffffffffffffffff;
  static UgcUpdateHandle get ugcUpdateHandleInvalid => 0xffffffffffffffff;
  static int get numUgcResultsPerPage => 50;
  static int get developerMetadataMax => 5000;
  static int get iNVALIdHtmlBROWSER => 0;
  static SteamItemInstanceId get steamItemInstanceIdInvalid => ~0;
  static SteamInventoryResult get steamInventoryResultInvalid => 1;
  static SteamInventoryUpdateHandle get steamInventoryUpdateHandleInvalid =>
      0xffffffffffffffff;
  static HSteamNetConnection get hSteamNetConnectionInvalid => 0;
  static HSteamListenSocket get hSteamListenSocketInvalid => 0;
  static HSteamNetPollGroup get hSteamNetPollGroupInvalid => 0;
  static int get maxSteamNetworkingErrMsg => 1024;
  static int get steamNetworkingMaxConnectionCloseReason => 128;
  static int get steamNetworkingMaxConnectionDescription => 128;
  static int get steamNetworkingMaxConnectionAppName => 32;
  static int get steamNetworkConnectionInfoFlagsUnauthenticated => 1;
  static int get steamNetworkConnectionInfoFlagsUnencrypted => 2;
  static int get steamNetworkConnectionInfoFlagsLoopbackBuffers => 4;
  static int get steamNetworkConnectionInfoFlagsFast => 8;
  static int get steamNetworkConnectionInfoFlagsRelayed => 16;
  static int get steamNetworkConnectionInfoFlagsDualWifi => 32;
  static int get maxSteamNetworkingSocketsMessageSizeSend => 512 * 1024;
  static int get steamNetworkingSendUnreliable => 0;
  static int get steamNetworkingSendNoNagle => 1;
  static int get steamNetworkingSendUnreliableNoNagle =>
      steamNetworkingSendUnreliable | steamNetworkingSendNoNagle;
  static int get steamNetworkingSendNoDelay => 4;
  static int get steamNetworkingSendUnreliableNoDelay =>
      steamNetworkingSendUnreliable |
      steamNetworkingSendNoDelay |
      steamNetworkingSendNoNagle;
  static int get steamNetworkingSendReliable => 8;
  static int get steamNetworkingSendReliableNoNagle =>
      steamNetworkingSendReliable | steamNetworkingSendNoNagle;
  static int get steamNetworkingSendUseCurrentThread => 16;
  static int get steamNetworkingSendAutoRestartBrokenSession => 32;
  static int get maxSteamNetworkingPingLocationString => 1024;
  static int get steamNetworkingPingFailed => 1;
  static int get steamNetworkingPingUnknown => 2;
  static int get steamNetworkingConfigP2pTransportIceEnableDefault => 1;
  static int get steamNetworkingConfigP2pTransportIceEnableDisable => 0;
  static int get steamNetworkingConfigP2pTransportIceEnableRelay => 1;
  static int get steamNetworkingConfigP2pTransportIceEnablePrivate => 2;
  static int get steamNetworkingConfigP2pTransportIceEnablePublic => 4;
  static int get steamNetworkingConfigP2pTransportIceEnableAll => 0x7fffffff;
  static SteamNetworkingPopId get steamDatagramPopIddev => 6579574;
  static int get steamgameserverqueryportshared => 0xffff;
  static int get masterserverupdaterportusegamesocketshare =>
      steamgameserverqueryportshared;
  static int get steamDatagramMaxSerializedTicket => 512;
  static int get maxSteamDatagramGameCoordinatorServerLoginAppData => 2048;
  static int get maxSteamDatagramGameCoordinatorServerLoginSerialized => 4096;
  static int get steamNetworkingSocketsFakeUdpPortRecommendedMTU => 1200;
  static int get steamNetworkingSocketsFakeUdpPortMaxMessageSize => 4096;
}
