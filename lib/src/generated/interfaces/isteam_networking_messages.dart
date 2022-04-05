// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/eresult.dart";
import "../enums/esteam_networking_connection_state.dart";
import "../structs/steam_net_connection_info.dart";
import "../structs/steam_net_connection_real_time_status.dart";
import "../structs/steam_networking_identity.dart";
import "../structs/steam_networking_message.dart";

final _steamNetworkingMessagesSteamApi = dl.lookupFunction<
    Pointer<ISteamNetworkingMessages> Function(),
    Pointer<ISteamNetworkingMessages>
        Function()>("SteamAPI_SteamNetworkingMessages_SteamAPI_v002");

final _steamGameServerNetworkingMessagesSteamApi = dl.lookupFunction<
    Pointer<ISteamNetworkingMessages> Function(),
    Pointer<ISteamNetworkingMessages>
        Function()>("SteamAPI_SteamGameServerNetworkingMessages_SteamAPI_v002");

class ISteamNetworkingMessages extends Opaque {
  static Pointer<ISteamNetworkingMessages> get userInstance =>
      _steamNetworkingMessagesSteamApi();

  static Pointer<ISteamNetworkingMessages> get serverInstance =>
      _steamGameServerNetworkingMessagesSteamApi();
}

final _sendMessageToUser = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<Void>,
  UnsignedInt,
  Int,
  Int,
),
    EResult Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<Void>,
  int,
  int,
  int,
)>("SteamAPI_ISteamNetworkingMessages_SendMessageToUser");

final _receiveMessagesOnChannel = dl.lookupFunction<
    Int Function(
  Pointer<ISteamNetworkingMessages>,
  Int,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Int,
),
    int Function(
  Pointer<ISteamNetworkingMessages>,
  int,
  Pointer<Pointer<SteamNetworkingMessage>>,
  int,
)>("SteamAPI_ISteamNetworkingMessages_ReceiveMessagesOnChannel");

final _acceptSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser");

final _closeSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser");

final _closeChannelWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Int,
),
    bool Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  int,
)>("SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser");

final _getSessionConnectionInfo = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetConnectionInfo>,
  Pointer<SteamNetConnectionRealTimeStatus>,
),
    ESteamNetworkingConnectionState Function(
  Pointer<ISteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetConnectionInfo>,
  Pointer<SteamNetConnectionRealTimeStatus>,
)>("SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo");

extension ISteamNetworkingMessagesExtensions
    on Pointer<ISteamNetworkingMessages> {
  EResult sendMessageToUser(
    Pointer<SteamNetworkingIdentity> identityRemote,
    Pointer<Void> pubData,
    int cubData,
    int nSendFlags,
    int nRemoteChannel,
  ) =>
      _sendMessageToUser.call(
        this,
        identityRemote,
        pubData,
        cubData,
        nSendFlags,
        nRemoteChannel,
      );

  int receiveMessagesOnChannel(
    int nLocalChannel,
    Pointer<Pointer<SteamNetworkingMessage>> ppOutMessages,
    int nMaxMessages,
  ) =>
      _receiveMessagesOnChannel.call(
        this,
        nLocalChannel,
        ppOutMessages,
        nMaxMessages,
      );

  bool acceptSessionWithUser(
    Pointer<SteamNetworkingIdentity> identityRemote,
  ) =>
      _acceptSessionWithUser.call(
        this,
        identityRemote,
      );

  bool closeSessionWithUser(
    Pointer<SteamNetworkingIdentity> identityRemote,
  ) =>
      _closeSessionWithUser.call(
        this,
        identityRemote,
      );

  bool closeChannelWithUser(
    Pointer<SteamNetworkingIdentity> identityRemote,
    int nLocalChannel,
  ) =>
      _closeChannelWithUser.call(
        this,
        identityRemote,
        nLocalChannel,
      );

  ESteamNetworkingConnectionState getSessionConnectionInfo(
    Pointer<SteamNetworkingIdentity> identityRemote,
    Pointer<SteamNetConnectionInfo> pConnectionInfo,
    Pointer<SteamNetConnectionRealTimeStatus> pQuickStatus,
  ) =>
      _getSessionConnectionInfo.call(
        this,
        identityRemote,
        pConnectionInfo,
        pQuickStatus,
      );
}
