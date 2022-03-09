import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../enums/e_steam_networking_connection_state.dart";
import "../steam_api.dart";
import "../structs/steam_net_connection_info.dart";
import "../structs/steam_net_connection_real_time_status.dart";
import "../structs/steam_networking_identity.dart";
import "../structs/steam_networking_message.dart";

class SteamNetworkingMessages extends Opaque {
  static Pointer<SteamNetworkingMessages> steamNetworkingMessagesSteamApi() =>
      nullptr;
  static Pointer<SteamNetworkingMessages>
      steamGameServerNetworkingMessagesSteamApi() => nullptr;
}

final _sendMessageToUser = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<Void>,
  UnsignedInt,
  Int,
  Int,
),
    EResult Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<Void>,
  int,
  int,
  int,
)>("SteamAPI_ISteamNetworkingMessages_SendMessageToUser");

final _receiveMessagesOnChannel = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingMessages>,
  Int,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Int,
),
    int Function(
  Pointer<SteamNetworkingMessages>,
  int,
  Pointer<Pointer<SteamNetworkingMessage>>,
  int,
)>("SteamAPI_ISteamNetworkingMessages_ReceiveMessagesOnChannel");

final _acceptSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser");

final _closeSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser");

final _closeChannelWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Int,
),
    bool Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  int,
)>("SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser");

final _getSessionConnectionInfo = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetConnectionInfo>,
  Pointer<SteamNetConnectionRealTimeStatus>,
),
    ESteamNetworkingConnectionState Function(
  Pointer<SteamNetworkingMessages>,
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetConnectionInfo>,
  Pointer<SteamNetConnectionRealTimeStatus>,
)>("SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo");

extension SteamNetworkingMessagesExtensions
    on Pointer<SteamNetworkingMessages> {
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
