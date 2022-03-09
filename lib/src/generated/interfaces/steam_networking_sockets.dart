import "dart:ffi";

import "package:ffi/ffi.dart";

import "../callback_structs/steam_net_authentication_status.dart";
import "../callback_structs/steam_networking_fake_ip_result.dart";
import "../enums/e_result.dart";
import "../enums/e_steam_networking_availability.dart";
import "../interfaces/steam_networking_connection_signaling.dart";
import "../interfaces/steam_networking_fake_udp_port.dart";
import "../interfaces/steam_networking_signaling_recv_context.dart";
import "../steam_api.dart";
import "../structs/steam_datagram_game_coordinator_server_login.dart";
import "../structs/steam_datagram_hosted_address.dart";
import "../structs/steam_datagram_relay_auth_ticket.dart";
import "../structs/steam_net_connection_info.dart";
import "../structs/steam_net_connection_real_time_lane_status.dart";
import "../structs/steam_net_connection_real_time_status.dart";
import "../structs/steam_networking_config_value.dart";
import "../structs/steam_networking_identity.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../structs/steam_networking_message.dart";
import "../typedefs.dart";

class SteamNetworkingSockets extends Opaque {
  static Pointer<SteamNetworkingSockets> steamNetworkingSocketsSteamApi() =>
      nullptr;
  static Pointer<SteamNetworkingSockets>
      steamGameServerNetworkingSocketsSteamApi() => nullptr;
}

final _createListenSocketIP = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIpAddr>,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamListenSocket Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIpAddr>,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP");

final _connectByIPAddress = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIpAddr>,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamNetConnection Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIpAddr>,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress");

final _createListenSocketP2P = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamListenSocket Function(
  Pointer<SteamNetworkingSockets>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2P");

final _connectP2P = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamNetConnection Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_ConnectP2P");

final _acceptConnection = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
),
    EResult Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
)>("SteamAPI_ISteamNetworkingSockets_AcceptConnection");

final _closeConnection = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Int,
  Pointer<Utf8>,
  Bool,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  int,
  Pointer<Utf8>,
  bool,
)>("SteamAPI_ISteamNetworkingSockets_CloseConnection");

final _closeListenSocket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  HSteamListenSocket,
)>("SteamAPI_ISteamNetworkingSockets_CloseListenSocket");

final _setConnectionUserData = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  LongLong,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  int,
)>("SteamAPI_ISteamNetworkingSockets_SetConnectionUserData");

final _getConnectionUserData = dl.lookupFunction<
    LongLong Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
)>("SteamAPI_ISteamNetworkingSockets_GetConnectionUserData");

final _setConnectionName = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Utf8>,
)>("SteamAPI_ISteamNetworkingSockets_SetConnectionName");

final _getConnectionName = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_GetConnectionName");

final _sendMessageToConnection = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Void>,
  UnsignedInt,
  Int,
  Pointer<LongLong>,
),
    EResult Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Void>,
  int,
  int,
  Pointer<LongLong>,
)>("SteamAPI_ISteamNetworkingSockets_SendMessageToConnection");

final _sendMessages = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingSockets>,
  Int,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Pointer<LongLong>,
),
    void Function(
  Pointer<SteamNetworkingSockets>,
  int,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Pointer<LongLong>,
)>("SteamAPI_ISteamNetworkingSockets_SendMessages");

final _flushMessagesOnConnection = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
),
    EResult Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
)>("SteamAPI_ISteamNetworkingSockets_FlushMessagesOnConnection");

final _receiveMessagesOnConnection = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Int,
),
    int Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Pointer<SteamNetworkingMessage>>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnConnection");

final _getConnectionInfo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<SteamNetConnectionInfo>,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<SteamNetConnectionInfo>,
)>("SteamAPI_ISteamNetworkingSockets_GetConnectionInfo");

final _getConnectionRealTimeStatus = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<SteamNetConnectionRealTimeStatus>,
  Int,
  Pointer<SteamNetConnectionRealTimeLaneStatus>,
),
    EResult Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<SteamNetConnectionRealTimeStatus>,
  int,
  Pointer<SteamNetConnectionRealTimeLaneStatus>,
)>("SteamAPI_ISteamNetworkingSockets_GetConnectionRealTimeStatus");

final _getDetailedConnectionStatus = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Utf8>,
  Int,
),
    int Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_GetDetailedConnectionStatus");

final _getListenSocketAddress = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<SteamNetworkingIpAddr>,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  HSteamListenSocket,
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_ISteamNetworkingSockets_GetListenSocketAddress");

final _createSocketPair = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
  Bool,
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
  bool,
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingSockets_CreateSocketPair");

final _configureConnectionLanes = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Int,
  Pointer<Int>,
  Pointer<UnsignedShort>,
),
    EResult Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  int,
  Pointer<Int>,
  Pointer<UnsignedShort>,
)>("SteamAPI_ISteamNetworkingSockets_ConfigureConnectionLanes");

final _getIdentity = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingSockets_GetIdentity");

final _initAuthentication = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
),
    ESteamNetworkingAvailability Function(
  Pointer<SteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_InitAuthentication");

final _getAuthenticationStatus = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetAuthenticationStatus>,
),
    ESteamNetworkingAvailability Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetAuthenticationStatus>,
)>("SteamAPI_ISteamNetworkingSockets_GetAuthenticationStatus");

final _createPollGroup = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
),
    HSteamNetPollGroup Function(
  Pointer<SteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_CreatePollGroup");

final _destroyPollGroup = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetPollGroup,
)>("SteamAPI_ISteamNetworkingSockets_DestroyPollGroup");

final _setConnectionPollGroup = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  HSteamNetPollGroup,
)>("SteamAPI_ISteamNetworkingSockets_SetConnectionPollGroup");

final _receiveMessagesOnPollGroup = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Int,
),
    int Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetPollGroup,
  Pointer<Pointer<SteamNetworkingMessage>>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup");

final _receivedRelayAuthTicket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<Void>,
  Int,
  Pointer<SteamDatagramRelayAuthTicket>,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<Void>,
  int,
  Pointer<SteamDatagramRelayAuthTicket>,
)>("SteamAPI_ISteamNetworkingSockets_ReceivedRelayAuthTicket");

final _findRelayAuthTicketForServer = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  Int,
  Pointer<SteamDatagramRelayAuthTicket>,
),
    int Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  int,
  Pointer<SteamDatagramRelayAuthTicket>,
)>("SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer");

final _connectToHostedDedicatedServer = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamNetConnection Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer");

final _getHostedDedicatedServerPort = dl.lookupFunction<
    UnsignedShort Function(
  Pointer<SteamNetworkingSockets>,
),
    int Function(
  Pointer<SteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPort");

final _getHostedDedicatedServerPOPID = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
),
    SteamNetworkingPOPId Function(
  Pointer<SteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPOPID");

final _getHostedDedicatedServerAddress = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamDatagramHostedAddress>,
),
    EResult Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamDatagramHostedAddress>,
)>("SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerAddress");

final _createHostedDedicatedServerListenSocket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamListenSocket Function(
  Pointer<SteamNetworkingSockets>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_CreateHostedDedicatedServerListenSocket");

final _getGameCoordinatorServerLogin = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamDatagramGameCoordinatorServerLogin>,
  Pointer<Int>,
  Pointer<Void>,
),
    EResult Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamDatagramGameCoordinatorServerLogin>,
  Pointer<Int>,
  Pointer<Void>,
)>("SteamAPI_ISteamNetworkingSockets_GetGameCoordinatorServerLogin");

final _connectP2PCustomSignaling = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingConnectionSignaling>,
  Pointer<SteamNetworkingIdentity>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamNetConnection Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingConnectionSignaling>,
  Pointer<SteamNetworkingIdentity>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_ConnectP2PCustomSignaling");

final _receivedP2PCustomSignal = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<Void>,
  Int,
  Pointer<SteamNetworkingSignalingRecvContext>,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<Void>,
  int,
  Pointer<SteamNetworkingSignalingRecvContext>,
)>("SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal");

final _getCertificateRequest = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<Int>,
  Pointer<Void>,
  Pointer<Pointer<Utf8>>,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<Int>,
  Pointer<Void>,
  Pointer<Pointer<Utf8>>,
)>("SteamAPI_ISteamNetworkingSockets_GetCertificateRequest");

final _setCertificate = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<Void>,
  Int,
  Pointer<Pointer<Utf8>>,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<Void>,
  int,
  Pointer<Pointer<Utf8>>,
)>("SteamAPI_ISteamNetworkingSockets_SetCertificate");

final _resetIdentity = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
),
    void Function(
  Pointer<SteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingSockets_ResetIdentity");

final _runCallbacks = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingSockets>,
),
    void Function(
  Pointer<SteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_RunCallbacks");

final _beginAsyncRequestFakeIP = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworkingSockets>,
  Int,
),
    bool Function(
  Pointer<SteamNetworkingSockets>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_BeginAsyncRequestFakeIP");

final _getFakeIP = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingSockets>,
  Int,
  Pointer<SteamNetworkingFakeIpResult>,
),
    void Function(
  Pointer<SteamNetworkingSockets>,
  int,
  Pointer<SteamNetworkingFakeIpResult>,
)>("SteamAPI_ISteamNetworkingSockets_GetFakeIP");

final _createListenSocketP2PFakeIP = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworkingSockets>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamListenSocket Function(
  Pointer<SteamNetworkingSockets>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2PFakeIP");

final _getRemoteFakeIPForConnection = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingSockets>,
  UnsignedInt,
  Pointer<SteamNetworkingIpAddr>,
),
    EResult Function(
  Pointer<SteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_ISteamNetworkingSockets_GetRemoteFakeIPForConnection");

final _createFakeUDPPort = dl.lookupFunction<
    Pointer<SteamNetworkingFakeUdpPort> Function(
  Pointer<SteamNetworkingSockets>,
  Int,
),
    Pointer<SteamNetworkingFakeUdpPort> Function(
  Pointer<SteamNetworkingSockets>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_CreateFakeUDPPort");

extension SteamNetworkingSocketsExtensions on Pointer<SteamNetworkingSockets> {
  HSteamListenSocket createListenSocketIP(
    Pointer<SteamNetworkingIpAddr> localAddress,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _createListenSocketIP.call(
        this,
        localAddress,
        nOptions,
        pOptions,
      );

  HSteamNetConnection connectByIPAddress(
    Pointer<SteamNetworkingIpAddr> address,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _connectByIPAddress.call(
        this,
        address,
        nOptions,
        pOptions,
      );

  HSteamListenSocket createListenSocketP2P(
    int nLocalVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _createListenSocketP2P.call(
        this,
        nLocalVirtualPort,
        nOptions,
        pOptions,
      );

  HSteamNetConnection connectP2P(
    Pointer<SteamNetworkingIdentity> identityRemote,
    int nRemoteVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _connectP2P.call(
        this,
        identityRemote,
        nRemoteVirtualPort,
        nOptions,
        pOptions,
      );

  EResult acceptConnection(
    HSteamNetConnection hConn,
  ) =>
      _acceptConnection.call(
        this,
        hConn,
      );

  bool closeConnection(
    HSteamNetConnection hPeer,
    int nReason,
    Pointer<Utf8> pszDebug,
    bool bEnableLinger,
  ) =>
      _closeConnection.call(
        this,
        hPeer,
        nReason,
        pszDebug,
        bEnableLinger,
      );

  bool closeListenSocket(
    HSteamListenSocket hSocket,
  ) =>
      _closeListenSocket.call(
        this,
        hSocket,
      );

  bool setConnectionUserData(
    HSteamNetConnection hPeer,
    int nUserData,
  ) =>
      _setConnectionUserData.call(
        this,
        hPeer,
        nUserData,
      );

  int getConnectionUserData(
    HSteamNetConnection hPeer,
  ) =>
      _getConnectionUserData.call(
        this,
        hPeer,
      );

  void setConnectionName(
    HSteamNetConnection hPeer,
    Pointer<Utf8> pszName,
  ) =>
      _setConnectionName.call(
        this,
        hPeer,
        pszName,
      );

  bool getConnectionName(
    HSteamNetConnection hPeer,
    Pointer<Utf8> pszName,
    int nMaxLen,
  ) =>
      _getConnectionName.call(
        this,
        hPeer,
        pszName,
        nMaxLen,
      );

  EResult sendMessageToConnection(
    HSteamNetConnection hConn,
    Pointer<Void> pData,
    int cbData,
    int nSendFlags,
    Pointer<LongLong> pOutMessageNumber,
  ) =>
      _sendMessageToConnection.call(
        this,
        hConn,
        pData,
        cbData,
        nSendFlags,
        pOutMessageNumber,
      );

  void sendMessages(
    int nMessages,
    Pointer<Pointer<SteamNetworkingMessage>> pMessages,
    Pointer<LongLong> pOutMessageNumberOrResult,
  ) =>
      _sendMessages.call(
        this,
        nMessages,
        pMessages,
        pOutMessageNumberOrResult,
      );

  EResult flushMessagesOnConnection(
    HSteamNetConnection hConn,
  ) =>
      _flushMessagesOnConnection.call(
        this,
        hConn,
      );

  int receiveMessagesOnConnection(
    HSteamNetConnection hConn,
    Pointer<Pointer<SteamNetworkingMessage>> ppOutMessages,
    int nMaxMessages,
  ) =>
      _receiveMessagesOnConnection.call(
        this,
        hConn,
        ppOutMessages,
        nMaxMessages,
      );

  bool getConnectionInfo(
    HSteamNetConnection hConn,
    Pointer<SteamNetConnectionInfo> pInfo,
  ) =>
      _getConnectionInfo.call(
        this,
        hConn,
        pInfo,
      );

  EResult getConnectionRealTimeStatus(
    HSteamNetConnection hConn,
    Pointer<SteamNetConnectionRealTimeStatus> pStatus,
    int nLanes,
    Pointer<SteamNetConnectionRealTimeLaneStatus> pLanes,
  ) =>
      _getConnectionRealTimeStatus.call(
        this,
        hConn,
        pStatus,
        nLanes,
        pLanes,
      );

  int getDetailedConnectionStatus(
    HSteamNetConnection hConn,
    Pointer<Utf8> pszBuf,
    int cbBuf,
  ) =>
      _getDetailedConnectionStatus.call(
        this,
        hConn,
        pszBuf,
        cbBuf,
      );

  bool getListenSocketAddress(
    HSteamListenSocket hSocket,
    Pointer<SteamNetworkingIpAddr> address,
  ) =>
      _getListenSocketAddress.call(
        this,
        hSocket,
        address,
      );

  bool createSocketPair(
    Pointer<UnsignedInt> pOutConnection1,
    Pointer<UnsignedInt> pOutConnection2,
    bool bUseNetworkLoopback,
    Pointer<SteamNetworkingIdentity> pIdentity1,
    Pointer<SteamNetworkingIdentity> pIdentity2,
  ) =>
      _createSocketPair.call(
        this,
        pOutConnection1,
        pOutConnection2,
        bUseNetworkLoopback,
        pIdentity1,
        pIdentity2,
      );

  EResult configureConnectionLanes(
    HSteamNetConnection hConn,
    int nNumLanes,
    Pointer<Int> pLanePriorities,
    Pointer<UnsignedShort> pLaneWeights,
  ) =>
      _configureConnectionLanes.call(
        this,
        hConn,
        nNumLanes,
        pLanePriorities,
        pLaneWeights,
      );

  bool getIdentity(
    Pointer<SteamNetworkingIdentity> pIdentity,
  ) =>
      _getIdentity.call(
        this,
        pIdentity,
      );

  ESteamNetworkingAvailability initAuthentication() => _initAuthentication.call(
        this,
      );

  ESteamNetworkingAvailability getAuthenticationStatus(
    Pointer<SteamNetAuthenticationStatus> pDetails,
  ) =>
      _getAuthenticationStatus.call(
        this,
        pDetails,
      );

  HSteamNetPollGroup createPollGroup() => _createPollGroup.call(
        this,
      );

  bool destroyPollGroup(
    HSteamNetPollGroup hPollGroup,
  ) =>
      _destroyPollGroup.call(
        this,
        hPollGroup,
      );

  bool setConnectionPollGroup(
    HSteamNetConnection hConn,
    HSteamNetPollGroup hPollGroup,
  ) =>
      _setConnectionPollGroup.call(
        this,
        hConn,
        hPollGroup,
      );

  int receiveMessagesOnPollGroup(
    HSteamNetPollGroup hPollGroup,
    Pointer<Pointer<SteamNetworkingMessage>> ppOutMessages,
    int nMaxMessages,
  ) =>
      _receiveMessagesOnPollGroup.call(
        this,
        hPollGroup,
        ppOutMessages,
        nMaxMessages,
      );

  bool receivedRelayAuthTicket(
    Pointer<Void> pvTicket,
    int cbTicket,
    Pointer<SteamDatagramRelayAuthTicket> pOutParsedTicket,
  ) =>
      _receivedRelayAuthTicket.call(
        this,
        pvTicket,
        cbTicket,
        pOutParsedTicket,
      );

  int findRelayAuthTicketForServer(
    Pointer<SteamNetworkingIdentity> identityGameServer,
    int nRemoteVirtualPort,
    Pointer<SteamDatagramRelayAuthTicket> pOutParsedTicket,
  ) =>
      _findRelayAuthTicketForServer.call(
        this,
        identityGameServer,
        nRemoteVirtualPort,
        pOutParsedTicket,
      );

  HSteamNetConnection connectToHostedDedicatedServer(
    Pointer<SteamNetworkingIdentity> identityTarget,
    int nRemoteVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _connectToHostedDedicatedServer.call(
        this,
        identityTarget,
        nRemoteVirtualPort,
        nOptions,
        pOptions,
      );

  int getHostedDedicatedServerPort() => _getHostedDedicatedServerPort.call(
        this,
      );

  SteamNetworkingPOPId getHostedDedicatedServerPOPID() =>
      _getHostedDedicatedServerPOPID.call(
        this,
      );

  EResult getHostedDedicatedServerAddress(
    Pointer<SteamDatagramHostedAddress> pRouting,
  ) =>
      _getHostedDedicatedServerAddress.call(
        this,
        pRouting,
      );

  HSteamListenSocket createHostedDedicatedServerListenSocket(
    int nLocalVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _createHostedDedicatedServerListenSocket.call(
        this,
        nLocalVirtualPort,
        nOptions,
        pOptions,
      );

  EResult getGameCoordinatorServerLogin(
    Pointer<SteamDatagramGameCoordinatorServerLogin> pLoginInfo,
    Pointer<Int> pcbSignedBlob,
    Pointer<Void> pBlob,
  ) =>
      _getGameCoordinatorServerLogin.call(
        this,
        pLoginInfo,
        pcbSignedBlob,
        pBlob,
      );

  HSteamNetConnection connectP2PCustomSignaling(
    Pointer<SteamNetworkingConnectionSignaling> pSignaling,
    Pointer<SteamNetworkingIdentity> pPeerIdentity,
    int nRemoteVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _connectP2PCustomSignaling.call(
        this,
        pSignaling,
        pPeerIdentity,
        nRemoteVirtualPort,
        nOptions,
        pOptions,
      );

  bool receivedP2PCustomSignal(
    Pointer<Void> pMsg,
    int cbMsg,
    Pointer<SteamNetworkingSignalingRecvContext> pContext,
  ) =>
      _receivedP2PCustomSignal.call(
        this,
        pMsg,
        cbMsg,
        pContext,
      );

  bool getCertificateRequest(
    Pointer<Int> pcbBlob,
    Pointer<Void> pBlob,
    Pointer<Pointer<Utf8>> errMsg,
  ) =>
      _getCertificateRequest.call(
        this,
        pcbBlob,
        pBlob,
        errMsg,
      );

  bool setCertificate(
    Pointer<Void> pCertificate,
    int cbCertificate,
    Pointer<Pointer<Utf8>> errMsg,
  ) =>
      _setCertificate.call(
        this,
        pCertificate,
        cbCertificate,
        errMsg,
      );

  void resetIdentity(
    Pointer<SteamNetworkingIdentity> pIdentity,
  ) =>
      _resetIdentity.call(
        this,
        pIdentity,
      );

  void runCallbacks() => _runCallbacks.call(
        this,
      );

  bool beginAsyncRequestFakeIP(
    int nNumPorts,
  ) =>
      _beginAsyncRequestFakeIP.call(
        this,
        nNumPorts,
      );

  void getFakeIP(
    int idxFirstPort,
    Pointer<SteamNetworkingFakeIpResult> pInfo,
  ) =>
      _getFakeIP.call(
        this,
        idxFirstPort,
        pInfo,
      );

  HSteamListenSocket createListenSocketP2PFakeIP(
    int idxFakePort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _createListenSocketP2PFakeIP.call(
        this,
        idxFakePort,
        nOptions,
        pOptions,
      );

  EResult getRemoteFakeIPForConnection(
    HSteamNetConnection hConn,
    Pointer<SteamNetworkingIpAddr> pOutAddr,
  ) =>
      _getRemoteFakeIPForConnection.call(
        this,
        hConn,
        pOutAddr,
      );

  Pointer<SteamNetworkingFakeUdpPort> createFakeUDPPort(
    int idxFakeServerPort,
  ) =>
      _createFakeUDPPort.call(
        this,
        idxFakeServerPort,
      );
}
